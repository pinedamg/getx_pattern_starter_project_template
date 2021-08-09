import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SigninView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SigninView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
