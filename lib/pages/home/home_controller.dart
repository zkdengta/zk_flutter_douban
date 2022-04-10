import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin{
  late TabController tabController;

  List<Tab> tabs = [
    const Tab(text: '  推荐  '),
    const Tab(text: '  笔记  '),
    const Tab(text: '  视频  '),
    const Tab(text: '  母婴  '),
    const Tab(text: '  安佳烘焙  '),
    const Tab(text: '  活动  '),
  ];

  @override
  void onInit() {
    super.onInit();
    tabController =
        TabController(length: tabs.length, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
