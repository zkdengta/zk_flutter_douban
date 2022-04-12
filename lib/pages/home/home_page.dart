
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zk_flutter_douban/pages/home/home_controller.dart';
import 'package:zk_flutter_douban/pages/home/nav_home_page.dart';
import 'package:zk_flutter_douban/res/app_colors.dart';
import 'package:zk_flutter_douban/widget/custom_underline_tabIndicator.dart';

class HomePage extends GetView<HomeController> {

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const NavHomePage(),
        backgroundColor: Colors.white,
        bottom: TabBar(
          tabs: controller.tabs,
          controller: controller.tabController,
          isScrollable: true,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black87,
          unselectedLabelStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.normal),
          labelStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          indicator: const CustomUnderlineTabIndicator(
            borderSide: BorderSide(
                width: 5.0, color: AppColors.yellow
            ),
            width: 22
          ),
        ),
      ),
      body: Container(
        child: TabBarView(
          children: controller.tabContent,
          controller: controller.tabController,
        ),
      ),
    );
  }
}
