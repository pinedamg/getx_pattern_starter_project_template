import 'package:flutter_launcher_icons/android.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final isAuth = false.obs;

  void setAuth(bool value) {
    isAuth.value = value;
    Get.offAllNamed("/home");
  }

  @override
  void onInit() {
    isAuth.value ? Get.offAllNamed('/home') : Get.offAllNamed('/signup');

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
