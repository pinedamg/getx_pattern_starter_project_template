import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IntroView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'IntroView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
