import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Auth'),
            ElevatedButton(
              onPressed: () => {controller.setAuth(true)},
              child: Text('Login'),
            ),
            GetX<AuthController>(
              init:
                  AuthController(), // you need to init controller only the first time
              builder: (c) =>
                  c.isAuth.value ? Text('Logged') : Text('Not Logged'),
            ),
          ],
        ),
      ),
    );
  }
}
