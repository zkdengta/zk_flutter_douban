import 'package:get/get.dart';
import 'package:zk_flutter_douban/pages/main/main_binding.dart';
import 'package:zk_flutter_douban/pages/main/main_page.dart';
import 'package:zk_flutter_douban/pages/splash/splash_binding.dart';
import 'package:zk_flutter_douban/pages/splash/splash_page.dart';
import 'package:zk_flutter_douban/pages/unknown_route_page.dart';
import 'package:zk_flutter_douban/routers/app_routes.dart';

class AppPages {

  static final unknownRoute = GetPage(
      name: AppRoutes.unknownRoutePage,
      page: () => const UnknownRoutePage()
  );

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.main,
      page: () => MainPage(),
      binding: MainBinding(),
    )
  ];
}