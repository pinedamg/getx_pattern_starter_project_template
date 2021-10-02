import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_starter_project_template/app/modules/auth/auth_controller.dart';
import 'package:logger/logger.dart';

class RootController extends GetxController {
  final _authController = Get.put(AuthController());
  final _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  void setLoading(bool value) {
    _isLoading.value = value;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    new Future.delayed(Duration(seconds: 2), () {
      Get.offNamed('/intro');
    });
  }

  @override
  void onClose() {}
}
