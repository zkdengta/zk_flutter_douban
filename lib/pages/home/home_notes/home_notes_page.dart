import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zk_flutter_douban/base/refresh_paging_state_page.dart';
import 'package:zk_flutter_douban/pages/home/home_notes/widget/topic_widget.dart';

import 'home_notes_controller.dart';

class HomeNotesPage extends StatelessWidget {
  const HomeNotesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeNotesController>();

    return RefreshPagingStatePage<HomeNotesController>(
      controller: controller,
      onPressed: () => {},
      onRefresh: () => controller.onRefreshHomeData(),
      onLoadMore: () => controller.onLoadMoreHomeData(),
      refreshController: controller.refreshController,
      lottieRocketRefreshHeader: false,
      child: CustomScrollView(
        controller: controller.scrollController,
        slivers: [_headWidget()],
      ),
    );
  }

  Widget _headWidget() {
    return const SliverToBoxAdapter(
      child: SizedBox(
        child: TopicWidget(),
      ),
    );
  }
}
