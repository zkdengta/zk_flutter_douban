import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:zk_flutter_douban/base/refresh_paging_state_page.dart';
import 'package:zk_flutter_douban/pages/home/home_notes/widget/notes_card_widget.dart';
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
        slivers: [
          _headWidget(),
          _listWidget(controller)
        ],
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

  Widget _listWidget(HomeNotesController controller) {
    return Obx(() {
      return SliverToBoxAdapter(
        child: Container(
          padding: const EdgeInsets.only(
            left: 5,
            right: 5,
          ),
          color: Colors.grey[100],
          child: MasonryGridView.count(
            controller: controller.scrollController,
            itemCount: controller.notesList.length,
            primary: false,
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 5.0,
            itemBuilder: (context, index) =>
                NotesCardWidget(
                  item: controller.notesList[index],
                ),
          ),
        ),
      );
    });
  }
}
