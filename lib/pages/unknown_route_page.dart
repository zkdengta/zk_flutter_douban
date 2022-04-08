
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnknownRoutePage extends StatelessWidget {
  const UnknownRoutePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink( //水波纹容器
        color: Colors.transparent,
        child: InkWell(
          onTap: () => Get.back(),
          child: Image.asset(
            "images/unknowPage.jpeg",
            height: Get.height,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
