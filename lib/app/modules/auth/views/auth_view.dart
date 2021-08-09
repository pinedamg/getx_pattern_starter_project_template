import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AuthView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AuthView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
