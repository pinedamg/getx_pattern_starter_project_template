import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_starter_project_template/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Pattern Starter Project'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Home Page View'),
      ),
    );
  }
}
