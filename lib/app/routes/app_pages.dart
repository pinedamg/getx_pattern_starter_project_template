import 'package:get/get.dart';

import 'package:getx_pattern_starter_project_template/app/modules/auth/bindings/auth_binding.dart';
import 'package:getx_pattern_starter_project_template/app/modules/auth/signin/bindings/signin_binding.dart';
import 'package:getx_pattern_starter_project_template/app/modules/auth/signin/views/signin_view.dart';
import 'package:getx_pattern_starter_project_template/app/modules/auth/signup/bindings/signup_binding.dart';
import 'package:getx_pattern_starter_project_template/app/modules/auth/signup/views/signup_view.dart';
import 'package:getx_pattern_starter_project_template/app/modules/auth/views/auth_view.dart';
import 'package:getx_pattern_starter_project_template/app/modules/home/bindings/home_binding.dart';
import 'package:getx_pattern_starter_project_template/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.AUTH;

  static final routes = [
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
  ];
}
