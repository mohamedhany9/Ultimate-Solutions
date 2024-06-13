

import 'package:get/get.dart';
import 'package:ultimate_solutions/screen/home_screen/domin/home_binding.dart';
import 'package:ultimate_solutions/screen/login_screen/domin/login_binding.dart';
import 'package:ultimate_solutions/screen/login_screen/login_screen.dart';

import '../screen/home_screen/home_screen.dart';
import '../screen/splash_screen/domin/splash_binding.dart';
import '../screen/splash_screen/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [

    GetPage(name: _Paths.splash, page: () => const SplashPage(), bindings: [
      SplashBindings(),
    ]),

    GetPage(
      name: _Paths.login,
      page: () => const LoginScreen(),
      bindings: [
        LoginBindings(),
      ],
    ),

    GetPage(
      name: _Paths.home,
      page: () => const HomeScreen(),
      bindings: [
        HomeBindings(),
      ],
    ),
  ];
}
