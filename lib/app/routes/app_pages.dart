import 'package:get/get.dart';
import 'package:getx_pattern_starter_project_template/app/auth_middleware.dart';

import 'package:getx_pattern_starter_project_template/app/modules/root/root_binding.dart';
import 'package:getx_pattern_starter_project_template/app/modules/root/root_view.dart';
import 'package:getx_pattern_starter_project_template/app/modules/intro/intro_binding.dart';
import 'package:getx_pattern_starter_project_template/app/modules/intro/intro_view.dart';
import 'package:getx_pattern_starter_project_template/app/modules/auth/auth_binding.dart';
import 'package:getx_pattern_starter_project_template/app/modules/auth/auth_view.dart';
import 'package:getx_pattern_starter_project_template/app/modules/auth/signin/bindings/signin_binding.dart';
import 'package:getx_pattern_starter_project_template/app/modules/auth/signin/views/signin_view.dart';
import 'package:getx_pattern_starter_project_template/app/modules/auth/signup/bindings/signup_binding.dart';
import 'package:getx_pattern_starter_project_template/app/modules/auth/signup/views/signup_view.dart';
import 'package:getx_pattern_starter_project_template/app/modules/home/bindings/home_binding.dart';
import 'package:getx_pattern_starter_project_template/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROOT;

  static final routes = [
    GetPage(
      name: _Paths.ROOT,
      page: () => RootView(),
      binding: RootBinding(),
      middlewares: [AuthMiddleware()],
      children: [
        GetPage(
          name: _Paths.INTRO,
          page: () => IntroView(),
          binding: IntroBinding(),
        ),
        GetPage(
          name: _Paths.HOME,
          page: () => HomeView(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: _Paths.AUTH,
          page: () => AuthView(),
          binding: AuthBinding(),
          children: [
            GetPage(
              name: _Paths.SIGNIN,
              page: () => SigninView(),
              binding: SigninBinding(),
            ),
            GetPage(
              name: _Paths.SIGNUP,
              page: () => SignupView(),
              binding: SignupBinding(),
            ),
          ],
        ),
      ],
    ),
  ];
}
