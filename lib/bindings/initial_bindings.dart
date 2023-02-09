import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthController(), permanent: true);
  }
}
