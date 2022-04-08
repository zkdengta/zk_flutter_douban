
import 'dart:async';

import 'package:get/get.dart';
import 'package:zk_flutter_douban/routers/app_routes.dart';

///开屏广告页倒计时
class SplashController extends GetxController{

  Timer? _timer;

  //倒计时（单位：秒）10s
  var timeCount = 6.obs;

  @override
  onInit(){
    super.onInit();
    startLaunchTime();
  }

  jumpToMain() {
    if (_timer != null) {
      _timer?.cancel();
      //关闭当前页面并跳转到主页
      Get.offAndToNamed(AppRoutes.main);
    }
  }

  Future<void> startLaunchTime()  async{
    Timer(const Duration(milliseconds: 0),(){
      //periodic 周期: 1秒
      _timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
        timeCount--;
        if(timeCount <= 0){
          Timer(const Duration(milliseconds: 500), () {
            //取消倒计时，并跳转主页
            jumpToMain();
          });
        }
      });
    });
  }

}