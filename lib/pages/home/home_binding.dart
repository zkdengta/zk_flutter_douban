import 'package:get/get.dart';
import 'package:zk_flutter_douban/pages/home/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }

}