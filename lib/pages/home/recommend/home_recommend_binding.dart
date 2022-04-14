import 'package:get/get.dart';
import 'package:zk_flutter_douban/pages/home/recommend/home_recomend_controller.dart';

class HomeRecommendBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => HomeRecommendController());
  }

}