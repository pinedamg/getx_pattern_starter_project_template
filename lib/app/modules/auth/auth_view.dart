import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'auth_controller.dart';

class AuthView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Username'),
            TextFormField(),
            Text('Email'),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
            ),
            Text('Password'),
            TextFormField(
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
