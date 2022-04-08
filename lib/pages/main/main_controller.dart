import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zk_flutter_douban/pages/home/home_page.dart';
import 'package:zk_flutter_douban/res/strings.dart';
import 'package:zk_flutter_douban/widget/keep_alive_wrapper.dart';



class MainController extends GetxController {
  ///响应式成员变量，默认位置指引0
  final _currentPage = 0.obs;

  get currentPage => _currentPage.value;

  set currentPage(value) => _currentPage.value = value;

  /// PageView页面控制器
  late PageController pageController;

  /// 底部BottomNavigationBarItem
  late List<BottomNavigationBarItem> bottomTabs = [];

  /// 页面控件
  late List<Widget> tabPageBodies;

  final Map<String, String> _bottomNames = {
    'tab_icon_cookbook': StringsConstant.homePage.tr,
    'tab_icon_course': StringsConstant.coursePage.tr,
    'tab_icon_mall': StringsConstant.mallPage.tr,
    'tab_icon_favo': StringsConstant.collectPage.tr,
    'tab_icon_mine': StringsConstant.minePage.tr,
  };

  BottomNavigationBarItem _bottomNavigationBarItem(String key, String value) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        'images/tabbar/$key.png',
        width: 22,
        height: 22,
      ),
      activeIcon: Image.asset(
        'images/tabbar/${key}_active.png',
        width: 22,
        height: 22,
      ),
      label: value,
    );
  }

  /// 底部Tab点击切换PageView
  void switchBottomBar(int index){
    pageController.jumpToPage(index);
  }

  /// PageView切换更新当前index
  void onPageChanged(int index) {
    currentPage = index;
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: currentPage);
    _bottomNames.forEach((key, value) {
      bottomTabs.add(_bottomNavigationBarItem(key, value));
    });

    tabPageBodies = <Widget>[
      const KeepAliveWrapper(
        // keepAlive默认为true
        // keepAlive为 true 后会缓存所有的列表项，列表项将不会销毁。
        // keepAlive为 false 时，列表项滑出预加载区域后将会别销毁。
        // 使用时一定要注意是否必要，因为对所有列表项都缓存的会导致更多的内存消耗
        keepAlive: true,
        child: HomePage(),
      ),
      const KeepAliveWrapper(
        child: HomePage(),
      ),
      const KeepAliveWrapper(
        child: HomePage(),
      ),
      const KeepAliveWrapper(
        child: HomePage(),
      ),
      const KeepAliveWrapper(
        child: HomePage(),
      ),
    ];

  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
