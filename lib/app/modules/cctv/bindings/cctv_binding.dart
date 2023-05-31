import 'package:get/get.dart';

import '../controllers/cctv_controller.dart';

class CctvBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CctvController>(
      () => CctvController(),
    );
  }
}
