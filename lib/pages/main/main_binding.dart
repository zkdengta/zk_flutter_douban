import 'package:get/get.dart';
import 'package:zk_flutter_douban/pages/home/home_controller.dart';
import 'package:zk_flutter_douban/pages/home/recommend/home_recommend_controller.dart';
import 'package:zk_flutter_douban/pages/main/main_controller.dart';

import '../home/home_notes/home_notes_controller.dart';

class MainBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => HomeRecommendController());
    Get.lazyPut(() => HomeNotesController());
  }
}