import 'package:get/get.dart';
import 'package:zk_flutter_douban/base/base_getx_with_page_refresh_controller.dart';
import 'package:zk_flutter_douban/common/constant.dart';
import 'package:zk_flutter_douban/common/http/apis.dart';
import 'package:zk_flutter_douban/common/http/http_request.dart';
import 'package:zk_flutter_douban/modes/banner_model.dart';
import 'package:zk_flutter_douban/utils/logger_util.dart';
import 'package:zk_flutter_douban/widget/state/load_state.dart';

class HomeRecommendController extends BaseGetXWithPageRefreshController {
  final homeBannerList = RxList<BannerModel>();

  @override
  void onInit() {
    getHomeRecommendData();
    super.onInit();
  }

  /// 首页推荐
  Future<void> getHomeRecommendData({int page = 1, int pageSize = 10}) async {
    HttpManager(
        loadingType: Constant.noLoading,
        future: HttpRequest().post(
            APIS.homeRecommended
                .replaceFirst(RegExp('page'), '${page * pageSize}'),
            queryParameters: {
              '_session': '1628128796-4926D5D3-18DB-48D7-B85A-D065350C3BA5',
              'auto_play_mode': '2',
              'code': '79c0d8972caf4383',
              'device_id': '4926D5D3-18DB-48D7-B85A-D065350C3BA5',
              'direction': page,
              'elapsed_milliseconds': '9223372036854775807',
              'bottom_id': '0',
              'request_count': '10',
              'user_id': '0'
            }),
        onSuccess: (response) {
          loadState = LoadState.success;
          /// 轮播图数据
          BannerModelList bannerModelList =
              BannerModelList.fromJson(response['result']['banner']);
          homeBannerList.assignAll(bannerModelList.list);
        },
        onFail: (error) {
          LoggerUtil.e("sss"+"iiii"+error.message!);
          loadState = LoadState.fail;
        });
  }
}
