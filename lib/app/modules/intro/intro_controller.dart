import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroController extends GetxController {
  final keyIntroScreen = GlobalKey<IntroductionScreenState>();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void goToHome() => Get.offAllNamed('/home');
}
