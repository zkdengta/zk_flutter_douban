import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zk_flutter_douban/base/base_getx_controller.dart';
import 'package:zk_flutter_douban/res/gaps.dart';
import 'package:zk_flutter_douban/res/strings.dart';
import 'package:zk_flutter_douban/widget/state/load_error_page.dart';
import 'package:zk_flutter_douban/widget/state/load_state.dart';
import 'package:zk_flutter_douban/widget/state/loading_lottie_rocket_widget.dart';
import 'package:zk_flutter_douban/widget/state/shimmer_loading_page.dart';

///Base state Widget 封装
class BaseStatePage<T extends BaseGetXController> extends StatefulWidget {
  const BaseStatePage({Key? key,
    required this.controller,
    required this.onPressed,
    this.errorPage,
    this.emptyPage,
    required this.child})
      : super(key: key);

  // 业务GetXController
  final T controller;

  // 点击事件
  final VoidCallback onPressed;

  // 自定义设置错误页面
  final Widget? errorPage;

  // 自定义设置空页面
  final Widget? emptyPage;

  //组件
  final Widget child;

  @override
  _BaseStatePageState<T> createState() {
    return _BaseStatePageState<T>();
  }
}

class _BaseStatePageState<T extends BaseGetXController>
    extends State<BaseStatePage<T>> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (widget.controller.loadState == LoadState.simpleShimmerLoading) {
          return const ShimmerLoadingPage();
        } else if (widget.controller.loadState ==
            LoadState.multipleShimmerLoading) {
          return const ShimmerLoadingPage(
            simpleLoading: false,
          );
        } else if (widget.controller.loadState ==
            LoadState.lottieRocketLoading) {
          return Column(
            children: const [
              Gaps.vGap150,
              LoadingLottieRocketWidget(
                  visible: true, animate: true, repeat: true)
            ],
          );
        } else if (widget.controller.loadState == LoadState.fail) {
          return widget.errorPage ?? EmptyErrorStatePage(
              loadState: LoadState.fail,
              onTap: widget.onPressed,
              errMsg: widget.controller.errorMsg,
          );
        } else if (widget.controller.loadState == LoadState.empty) {
          return widget.emptyPage ??
              EmptyErrorStatePage(
                loadState: LoadState.empty,
                onTap: widget.onPressed,
                errMsg: StringsConstant.noData.tr,
              );
        } else if (widget.controller.loadState == LoadState.success) {
          return widget.child;
        }
        return Gaps.empty;
      }),
    );
  }
}
