import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_pattern_starter_project_template/app/modules/intro/widgets/introscreen_widget.dart';
import 'intro_controller.dart';

class IntroView extends GetView<IntroController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroscreenWidget(controller: controller),
    );
  }
}
