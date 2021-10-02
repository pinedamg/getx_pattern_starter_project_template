import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'intro_controller.dart';

class IntroView extends GetView<IntroController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _IntroScreen(),
    );
  }

  IntroductionScreen _IntroScreen() {
    return IntroductionScreen(
      key: controller.keyIntroScreen,
      pages: [
        PageViewModel(
          title: "Title of first page",
          body: "This is the body",
          image: const Center(child: Icon(Icons.android)),
        ),
        PageViewModel(
          title: "Title of second page",
          body: "This is the body",
          image: const Center(child: Icon(Icons.android)),
        ),
        PageViewModel(
          title: "Title of third page",
          body: "This is the body",
          image: const Center(child: Icon(Icons.android)),
        ),
      ],
      onDone: () {
        Get.offAllNamed('/home');
      },
      onSkip: () {
        Get.offAllNamed('/home');
      },
      showNextButton: true,
      showDoneButton: true,
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Text("Next"),
      done: const Text("Done"),
    );
  }
}
