import 'package:get/get.dart';

import '../controllers/guided_page_controller.dart';

class GuidedPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GuidedPageController>(
      () => GuidedPageController(),
    );
  }
}
