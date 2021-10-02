import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_starter_project_template/app/modules/root/root_binding.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  // firebase initialization
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // Get.put(AuthController());
  runApp(
    GetMaterialApp(
      initialBinding: RootBinding(),
      initialRoute: AppPages.INITIAL,
      title: "Flutter Getx Pattern Starter Project",
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
    ),
  );
}
