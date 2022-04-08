import 'package:get/get.dart';
import 'package:zk_flutter_douban/pages/main/main_controller.dart';

class MainBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
  }
}