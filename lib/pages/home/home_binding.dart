import 'package:get/get.dart';
import 'package:zk_flutter_douban/pages/home/home_controller.dart';
import 'package:zk_flutter_douban/pages/home/recommend/home_recommend_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => HomeRecommendController());
  }

}