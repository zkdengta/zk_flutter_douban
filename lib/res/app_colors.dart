import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xfffbfbfb);

  static const Color success = Color(0xff07c160);

  static const Color danger = Color(0xffee0a24);

  static const Color warning = Color(0xffffba00);

  static const Color info = Color(0xff00a1d6);

  static const Color active = Colors.amber;

  static const Color black = Color.fromRGBO(61, 57, 58, 1.0);

  static const Color qianTextColor = Color.fromRGBO(153, 153, 153, 1);

  static const Color deepTextColor = Color.fromRGBO(18, 24, 38, 1);

  static const Color yellow = Colors.amber;

  static const Color unactive = Color(0xff7b7b7b);

  static const Color un2active = Color(0xff8d8d8d);

  static const Color un3active = Color(0xffb1b1b1);

  static const Color page = Color(0xfff7f7f7);

  static const Color nav = Color(0xfffbfbfb);

  static const Color border = Color(0xfff5f5f5);

  static const Color line = Color.fromRGBO(239, 239, 239, 1);

  static const Color white = Color.fromRGBO(245, 245, 245, 1);

  static const Color background = Color.fromRGBO(248, 248, 248, 1);

  // 颜色值转换
  // static Color string2Color(String colorString) {
  //   int value = 0x00000000;
  //   if (colorString.isNotEmpty) {
  //     if (colorString[0] == '#') {
  //       colorString = colorString.substring(1);
  //     }
  //     value = int.tryParse(colorString, radix: 16);
  //     if (value != null) {
  //       if (value < 0xFF000000) {
  //         value += 0xFF000000;
  //       }
  //     }
  //   }
  //   return Color(value);
  // }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
