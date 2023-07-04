import 'package:get/get.dart';

import '../controllers/cctv_controller.dart';

// class CctvBinding extends Bindings {
//   final CameraDescription camera;

//   CctvBinding(this.camera);

//   @override
//   void dependencies() {
//     Get.lazyPut<CctvController>(
//       () => CctvController(camera),
//     );
//   }
// }
class CctvBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CctvController>(
      () => CctvController(),
    );
  }
}
