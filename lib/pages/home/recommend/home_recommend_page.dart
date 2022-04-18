
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zk_flutter_douban/base/refresh_paging_state_page.dart';
import 'package:zk_flutter_douban/pages/home/recommend/home_banner_widget.dart';
import 'package:zk_flutter_douban/pages/home/recommend/home_recommend_controller.dart';

class HomeRecommendPage extends StatelessWidget {


  const HomeRecommendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = Get.find<HomeRecommendController>();

    return RefreshPagingStatePage<HomeRecommendController>(
      controller: controller,
      onPressed: ()=>{},
      refreshController: controller.refreshController,
      lottieRocketRefreshHeader: false,
      child: CustomScrollView(
        controller: controller.scrollController,
        slivers: [
          HomeBannerWidget()
        ],
      ),
    );
  }
}
