
import 'package:get/get.dart';
import 'package:zk_flutter_douban/common/http/http_request.dart';
import 'package:zk_flutter_douban/modes/home_notes_model.dart';
import 'package:zk_flutter_douban/widget/state/load_state.dart';

import '../../../base/base_getx_with_page_refresh_controller.dart';
import '../../../common/constant.dart';
import '../../../common/http/apis.dart';

class HomeNotesController extends BaseGetXWithPageRefreshController {

  final topicFirstList = RxList<HomeNotesTopicsHomeNotesTopics>();
  final topicTwoList = RxList<HomeNotesTopicsHomeNotesTopics>();
  final notesList = RxList<HomeNotesList>();

  @override
  void onInit() {
    super.onInit();
    getHomeData(loadingType: Constant.lottieRocketLoading,
        refreshState: RefreshState.first);
  }

  /// 首页推荐
  Future<void> getHomeNoteData(String loadingType, RefreshState refreshState) async {
    httpManagerWithRefreshPaging<HomeNotesModel>(
        loadingType: loadingType,
        refreshState: refreshState,
        future: HttpRequest().post<HomeNotesModel>(
            APIS.homeNotes
                .replaceFirst(RegExp('page'), '$currentPage'),
            queryParameters: {
              '_session': '1628128796-4926D5D3-18DB-48D7-B85A-D065350C3BA5',
              'btmid': [30593237, 30593139],
              'code': '79c0d8972caf4383',
              'device_id': '4926D5D3-18DB-48D7-B85A-D065350C3BA5',
              'direction': '1',
              'is_new_user': '0',
              'request_count': '2',
              'user_id': '0',
            }),
        onSuccess: (response) {
          if (refreshState == RefreshState.first) {
            refreshLoadingSuccess(RefreshState.refresh);
            if(response.topics?.isNotEmpty == true){
              List<HomeNotesTopicsHomeNotesTopics> first = (response.topics![0]).toList();
              topicFirstList.assignAll(first);
              List<HomeNotesTopicsHomeNotesTopics> two = (response.topics![1]).toList();
              topicTwoList.assignAll(two);
            }

          }

          if(response.list != null && response.list?.isNotEmpty == true){
            refreshLoadState = LoadState.success;
            List<HomeNotesList> list =
            (response.list as List<HomeNotesList>).toList();
            if (refreshState == RefreshState.first) {
              notesList.assignAll(list);
            } else if (refreshState == RefreshState.refresh) {
              notesList.assignAll(list);
            } else if (refreshState == RefreshState.loadMore) {
              notesList.addAll(list);
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
      currentPage = 0;
    }
    if (refreshState == RefreshState.loadMore) {
      /// 上滑加载更多
      currentPage++;
    }
    getHomeNoteData(loadingType, refreshState);
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
