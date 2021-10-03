import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_starter_project_template/app/modules/root/root_controller.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroscreenWidget extends StatelessWidget {
  final keyIntroScreen;
  IntroscreenWidget({this.keyIntroScreen});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: keyIntroScreen,
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
        Get.find<RootController>();
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
