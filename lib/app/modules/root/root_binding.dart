import 'package:get/get.dart';
// import 'package:getx_pattern_starter_project_template/app/modules/auth/auth_controller.dart';

import 'root_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<RootController>(() => RootController());
    Get.put(RootController());
  }
}
