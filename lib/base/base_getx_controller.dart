import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:zk_flutter_douban/common/constant.dart';
import 'package:zk_flutter_douban/common/http/exception.dart';
import 'package:zk_flutter_douban/common/http/response/base_model.dart';
import 'package:zk_flutter_douban/utils/connectivity_utils.dart';
import 'package:zk_flutter_douban/widget/state/load_state.dart';

import '../common/http/http_config.dart';

/// 基于GetX的 BaseGetController

class BaseGetXController extends GetxController {
  ///  加载状态
  final _loadState = LoadState.simpleShimmerLoading.obs;

  get loadState => _loadState.value;

  set loadState(value) => _loadState.value = value;

  /// 错误提示
  final _errorMsg = ''.obs;

  get errorMsg => _errorMsg.value;

  set errorMsg(value) => _errorMsg.value = value;

  @override
  void onReady() async {
    super.onReady();
    var connectivityState = await ConnectivityUtils.checkConnectivity();

    if (connectivityState != ConnectivityState.none) {
      onReadyInitData();
    } else {
      Get.snackbar("提示", "网络异常，请检查你的网络!");
      loadState = LoadState.fail;
      errorMsg = "网络异常，请检查你的网络";
    }
  }

  /// onReady() 时期请求数据
  void onReadyInitData() {}

  void httpManager<T>(
      {required String loadingType,
      required Future<BaseModel<T>> future,
      required Function(T value) onSuccess,
      required Function(ApiException value) onFail}) async {
    /// 是否显示加载页面、加载页面类型
    if (loadingType == Constant.showLoadingDialog) {
      /// 页面上加载Loading
      EasyLoading.show(status: '加载中...');
    } else if (loadingType == Constant.simpleShimmerLoading) {
      /// 覆盖页面-简单Shimmer动画
      loadState = LoadState.simpleShimmerLoading;
    } else if (loadingType == Constant.multipleShimmerLoading) {
      /// 覆盖页面-列表Shimmer动画
      loadState = LoadState.multipleShimmerLoading;
    } else if (loadingType == Constant.lottieRocketLoading) {
      loadState = LoadState.lottieRocketLoading;
    } else if (loadingType == Constant.noLoading) {
      loadState = LoadState.success;
    }
    future.then((value) {
      BaseModel model = value;
      var code = model.code;
      /// 网络请求成功
      if (code == HttpConfig.successCode) {
        /// 请求成功
        var data = model.data;
        loadState = LoadState.success;
        /// 在onSuccess()中也要判断具体的业务数据是否为空
        onSuccess(data);
      } else {
        /// 请求失败
        loadState = LoadState.fail;
        // 外部方法在后，可在方法里根据业务更改状态
        onFail(ApiException(model.code, model.message));
      }
    }).onError<ApiException>((error, stackTrace) {
      /// 网络请求失败
      if (loadingType != Constant.noLoading) {
        loadState = LoadState.fail;
        errorMsg = '${error.code}  ${error.message}';
      }
      onFail(error);
    });
    dismissEasyLoading();
  }

  void dismissEasyLoading() {
    if (EasyLoading.isShow) {
      EasyLoading.dismiss();
    }
  }
}
