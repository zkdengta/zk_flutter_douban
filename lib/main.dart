import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:zk_flutter_douban/routers/app_pages.dart';
import 'package:zk_flutter_douban/routers/app_routes.dart';
import 'package:zk_flutter_douban/utils/keyboard_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  RefreshConfiguration(
      hideFooterWhenNotFull: false,
      child: ScreenUtilInit(
        designSize: const Size(360,690),
        builder: (BuildContext context, Widget? child) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          builder: (context,child){
            return FlutterEasyLoading(
              child: Scaffold(
                body: GestureDetector(
                  child: child,
                  onTap: () => KeyboardUtils.hideKeyboard(context),
                ),
              ),
            );
          },
          enableLog: true,
          smartManagement: SmartManagement.keepFactory,
          initialRoute: AppRoutes.splash,
          getPages: AppPages.routes,
        ),
      ),
    );
  }
}
