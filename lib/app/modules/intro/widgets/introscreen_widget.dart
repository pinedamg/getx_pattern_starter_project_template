import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_starter_project_template/app/modules/root/root_controller.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroscreenWidget extends StatelessWidget {
  final controller;
  IntroscreenWidget({this.controller});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: controller.keyIntroScreen,
      pages: [
        PageViewModel(
          title: "Welcome to the Starter Project",
          body: "This is a simple intro",
          image: const Center(child: Icon(Icons.home, size: 100.0)),
        ),
        PageViewModel(
          title: "User Authentication",
          body: "Covers the most common cases",
          image: const Center(child: Icon(Icons.account_circle, size: 100.0)),
        ),
        PageViewModel(
          title: "App settings",
          body: "Usefull application settings",
          image: const Center(child: Icon(Icons.settings, size: 100.0)),
        ),
        PageViewModel(
          title: "Let's get started",
          body: "Here go",
          image: const Center(child: Icon(Icons.celebration, size: 100.0)),
        ),
      ],
      onDone: () => controller.goToHome(),
      onSkip: () => controller.goToHome(),
      showNextButton: true,
      showDoneButton: true,
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Text("Next"),
      done: const Text("Done"),
    );
  }
}
