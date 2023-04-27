import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zk_flutter_douban/res/gaps.dart';

import 'splash_controller.dart';

class SplashPage extends StatelessWidget {
  final controller = Get.find<SplashController>();

  SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/launchImage.png",
            fit: BoxFit.fill,
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
          ),
          Positioned(
              top: MediaQuery
                  .of(context)
                  .padding
                  .top,
              right: 10,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Text(
                      "广告",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  Gaps.hGap10,
                  InkWell(
                    child: _cilpButton(controller),
                    onTap:(){ controller.jumpToMain();},
                  )
                ],
              ))
        ],
      ),
    );
  }
}

Widget _cilpButton(SplashController controller) {
  return Container(
    width: 60,
    height: 30,
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.6),
      borderRadius: BorderRadius.circular(15)
    ),
    child: Obx((){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center, //居中显示
        // 纵向布局
        children: [
          Text(
            '${controller.timeCount}',
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
          const Text(
            " 跳过",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      );
    })
  );
}
