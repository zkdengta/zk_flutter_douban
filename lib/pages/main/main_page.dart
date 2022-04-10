import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:zk_flutter_douban/pages/main/main_controller.dart';
import 'package:zk_flutter_douban/res/strings.dart';

import 'main_controller.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    DateTime? _lastDateTime;

    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: WillPopScope(
        child: _buildPageView(),
        onWillPop: () {
          if(_lastDateTime == null || DateTime.now().difference(_lastDateTime!) > const Duration(seconds: 1)){
            _lastDateTime = DateTime.now();
            Fluttertoast.showToast(msg: StringsConstant.exitAppToast.tr);
            return Future.value(false);
          }
          return Future.value(true);
        },
      ),
    );
  }

  /// 底部导航栏
  Widget _buildBottomNavigationBar() {
    return Obx((){
      return BottomNavigationBar(
        items: controller.bottomTabs,
        currentIndex: controller.currentPage,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        unselectedItemColor: Colors.black45,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: (int index) => controller.switchBottomBar(index),
      );
    });
  }
  /// 内容页
  Widget _buildPageView() {
    return PageView(
      //禁止滑动
      // physics: const NeverScrollableScrollPhysics(),
      children: controller.tabPageBodies,
      controller: controller.pageController,
      onPageChanged: (index) => controller.onPageChanged(index),
    );
  }
}




