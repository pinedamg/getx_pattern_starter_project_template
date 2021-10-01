import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RootView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RootView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
