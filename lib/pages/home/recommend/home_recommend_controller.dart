import 'package:get/get.dart';
import 'package:zk_flutter_douban/base/base_getx_with_page_refresh_controller.dart';
import 'package:zk_flutter_douban/common/constant.dart';
import 'package:zk_flutter_douban/common/http/apis.dart';
import 'package:zk_flutter_douban/common/http/http_request.dart';
import 'package:zk_flutter_douban/utils/logger_util.dart';
import 'package:zk_flutter_douban/widget/state/load_state.dart';

import '../../../modes/home_recommend_model.dart';

class HomeRecommendController extends BaseGetXWithPageRefreshController {
  final homeBannerList = RxList<HomeRecommendBanner>();
  final homeCookList = RxList<HomeRecommendList>();

  @override
  void onInit() {
    super.onInit();
    getHomeData(loadingType: Constant.lottieRocketLoading,
        refreshState: RefreshState.first);
  }

  /// 首页推荐
  Future<void> getHomeRecommendData(String loadingType, RefreshState refreshState) async {
    httpManagerWithRefreshPaging<HomeRecommendModel>(
        loadingType: loadingType,
        refreshState: refreshState,
        future: HttpRequest().post<HomeRecommendModel>(
            APIS.homeRecommended
                .replaceFirst(RegExp('page'), '$currentPage'),
            queryParameters: {
              '_session': '1628128796-4926D5D3-18DB-48D7-B85A-D065350C3BA5',
              'auto_play_mode': '2',
              'code': '79c0d8972caf4383',
              'device_id': '4926D5D3-18DB-48D7-B85A-D065350C3BA5',
              'direction': currentPage,
              'elapsed_milliseconds': '9223372036854775807',
              'bottom_id': '0',
              'request_count': '10',
              'user_id': '0'
            }),
        onSuccess: (response) {
          /// 轮播图数据
          if (refreshState == RefreshState.first) {
            refreshLoadingSuccess(RefreshState.refresh);
            List<HomeRecommendBanner> model =
            (response.banner as List<HomeRecommendBanner>).toList();
            homeBannerList.assignAll(model);
          }

          if(response.list != null && response.list?.isNotEmpty == true){
            refreshLoadState = LoadState.success;
            List<HomeRecommendList> list =
            (response.list as List<HomeRecommendList>).toList();
            if (refreshState == RefreshState.first) {
              homeCookList.assignAll(list);
            } else if (refreshState == RefreshState.refresh) {
              homeCookList.assignAll(list);
            } else if (refreshState == RefreshState.loadMore) {
              LoggerUtil.e("getHomeRecommendData---"+list.toString());
              homeCookList.addAll(list);
            }
          }else{
            if (loadingType != Constant.noLoading) {
              refreshLoadState = LoadState.empty;
            } else {
              loadNoData();
            }
          }
        },
        onFail: (error) {
          refreshLoadState = LoadState.fail;
        });
  }

  /// 获取首页数据
  Future<void> getHomeData({
    required String loadingType,
    required RefreshState refreshState,
  }) async {
    if (refreshState == RefreshState.refresh ||
        refreshState == RefreshState.first) {
      /// 下拉刷新
      currentPage = 1;
    }
    if (refreshState == RefreshState.loadMore) {
      /// 上滑加载更多
      currentPage++;
    }
    getHomeRecommendData(loadingType, refreshState);
  }

  /// 下拉刷新首页
  void onRefreshHomeData() {
    getHomeData(
      loadingType: Constant.noLoading,
      refreshState: RefreshState.refresh,
    );
  }

  /// 上滑加载更多
  void onLoadMoreHomeData() {
    getHomeData(
      loadingType: Constant.noLoading,
      refreshState: RefreshState.loadMore,
    );
  }
}
