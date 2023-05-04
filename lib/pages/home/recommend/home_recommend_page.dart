import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zk_flutter_douban/base/refresh_paging_state_page.dart';
import 'package:zk_flutter_douban/pages/home/recommend/home_recommend_controller.dart';
import 'package:zk_flutter_douban/pages/home/recommend/widget/home_banner_widget.dart';
import 'package:zk_flutter_douban/pages/home/recommend/widget/home_cook_widget.dart';
import 'package:zk_flutter_douban/res/dimens.dart';

class HomeRecommendPage extends StatelessWidget {
  const HomeRecommendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeRecommendController>();

    return RefreshPagingStatePage<HomeRecommendController>(
      controller: controller,
      onPressed: () => {},
      onRefresh: () => controller.onRefreshHomeData(),
      onLoadMore: () => controller.onLoadMoreHomeData(),
      refreshController: controller.refreshController,
      lottieRocketRefreshHeader: false,
      child: CustomScrollView(
        controller: controller.scrollController,
        slivers: [_homeBanner(), _homeList(controller)],
      ),
    );
  }
}

/// 轮播图Banner
Widget _homeBanner() {
  return const SliverToBoxAdapter(
    child: SizedBox(
      height: Dimens.gapDp100,
      child: HomeBannerWidget(),
    ),
  );
}

/// 列表
Widget _homeList(HomeRecommendController controller) {
  return Obx((){
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return HomeCookWidget(item: controller.homeCookList[index]);
        },
        childCount: controller.homeCookList.length,
      ),
    );
  });
}
