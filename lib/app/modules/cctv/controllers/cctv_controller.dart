
import 'package:get/get.dart';

// class CctvController extends GetxController {
//   late CameraController _controller;
//   late Future<void> _initializeControllerFuture;
//   late Rx<CameraImage?> _cameraImage;

//   CctvController(CameraDescription camera) {
//     _initCamera(camera);
//   }

//   Future<void> _initCamera(CameraDescription camera) async {
//     _controller = CameraController(camera, ResolutionPreset.medium);
//     _initializeControllerFuture = _controller.initialize();
//     await _initializeControllerFuture;

//     if (_controller.value.isInitialized) {
//       _cameraImage = Rx<CameraImage?>(null);
//       _controller.startImageStream((CameraImage image) {
//         _cameraImage.value = image;
//       });
//     }
//   }

//   CameraController get controller => _controller;
//   Rx<CameraImage?> get cameraImage => _cameraImage;

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }










class CctvController extends GetxController {
  //TODO: Implement CctvController

  final count = 0.obs;



  void increment() => count.value++;
}
