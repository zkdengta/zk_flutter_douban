import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zk_flutter_douban/pages/home/recommend/home_recommend_page.dart';
import 'package:zk_flutter_douban/widget/keep_alive_wrapper.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin{

  late TabController tabController;

  List<Tab> tabs = [
    const Tab(text: '推荐'),
    const Tab(text: '笔记'),
    const Tab(text: '视频'),
    const Tab(text: '母婴'),
    const Tab(text: '安佳烘焙'),
    const Tab(text: '活动'),
  ];

  /// 页面控件
  late List<Widget> tabContent;

  @override
  void onInit() {
    super.onInit();
    tabContent = <Widget>[
      const KeepAliveWrapper(
        child: HomeRecommendPage(),
      ),
      const KeepAliveWrapper(
        child: Text("gjahgdaghkj1"),
      ),
      const KeepAliveWrapper(
        child: Text("gjahgdaghkj2"),
      ),
      const KeepAliveWrapper(
        child: Text("gjahgdaghkj3"),
      ),
      const KeepAliveWrapper(
        child: Text("gjahgdaghkj4"),
      ),
      const KeepAliveWrapper(
        child: Text("gjahgdaghkj5"),
      ),
    ];
    tabController =
        TabController(length: tabs.length, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
