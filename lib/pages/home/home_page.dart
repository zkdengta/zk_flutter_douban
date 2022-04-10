
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zk_flutter_douban/pages/home/home_controller.dart';
import 'package:zk_flutter_douban/pages/home/nav_home_page.dart';

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
        ),
      ),
    );
  }
}
