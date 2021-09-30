import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_starter_project_template/app/modules/auth/auth_binding.dart';
import 'package:getx_pattern_starter_project_template/app/modules/auth/auth_controller.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  // firebase initialization
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    GetMaterialApp(
      initialBinding: AuthBinding(),
      initialRoute: AppPages.INITIAL,
      title: "Flutter Getx Pattern Starter Project",
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
    ),
  );
}
