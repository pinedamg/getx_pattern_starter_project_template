import 'package:get/get.dart';

class AuthController extends GetxController {
  final _isLoggedIn = false.obs;

  bool get isLoggedIn => _isLoggedIn.value;
  set isLoggedIn(bool value) => _isLoggedIn.value = value;

  // Logout user
  // TODO: Implement login
  Future<void> login() async {
    isLoggedIn = false;
    await Future.delayed(Duration(seconds: 2));
    isLoggedIn = true;
  }

  // Logout user
  // TODO: Implement logout
  Future<void> logout() async {
    isLoggedIn = true;
    await Future.delayed(Duration(seconds: 2));
    isLoggedIn = false;
  }

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
}
