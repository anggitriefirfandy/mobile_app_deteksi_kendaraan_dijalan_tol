import 'dart:io';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import '../../../routes/app_pages.dart';
import '../controllers/cctv_controller.dart';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CctvView extends StatefulWidget {
  @override
  _CctvViewState createState() => _CctvViewState();
}

class _CctvViewState extends State<CctvView> {
  File? _image;
  Future<void> openCamera() async {
    //fuction openCamera();
    final pickedImage =
        await ImagePicker().getImage(source: ImageSource.camera);

    setState(() {
      // tempat untuk set state image
      _image = File(pickedImage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.offAllNamed(Routes.DASHBOARD);
          },
        ),
      ),
      body: Container(
        child: Center(
          child: _image == null ? Text("No Image") : Image.file(_image!),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add_a_photo,
            color: Colors.white,
          ),
          backgroundColor: Colors.green,
          onPressed: () {
            openCamera();
          }),
    );
  }
}


// class CctvView extends GetView<CctvController> {
//   const CctvView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('CctvView'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Text(
//           'CctvView is working',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:tflite/tflite.dart';
// import 'package:camera/camera.dart';

// late List<CameraDescription> cameras;

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   cameras = await availableCameras();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.dark(),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   late CameraImage cameraImage;
//   late CameraController cameraController;
//   String result = '';

//   @override
//   initCamera() {
//     cameraController = CameraController(cameras[0], ResolutionPreset.medium);
//     cameraController.initialize().then((value) {
//       if (!mounted) return;
//       setState(() {
//         cameraController.startImageStream((ImageStream) {
//           cameraImage = ImageStream;
//           runModel();
//         });
//       });
//     });
//   }

//   loadModel() async {
//     await Tflite.loadModel(
//         model: "assets/model_unquant.tflite", labels: "assets/labels.txt");
//   }

//   runModel() async {
//     if (cameraImage != null) {
//       var recognitions = await Tflite.runModelOnFrame(
//           bytesList: cameraImage.planes.map((plane) {
//             return plane.bytes;
//           }).toList(),
//           imageHeight: cameraImage.height,
//           imageWidth: cameraImage.width,
//           imageMean: 127.5,
//           imageStd: 127.5,
//           rotation: 90,
//           numResults: 2,
//           threshold: 0.1,
//           asynch: true);
//       recognitions?.forEach((element) {
//         setState(() {
//           result = element["label"];
//           print(result);
//         });
//       });
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     initCamera();
//     loadModel();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Deteksi Mask"),
//         ),
//         body: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: Container(
//                 height: MediaQuery.of(context).size.height - 170,
//                 width: MediaQuery.of(context).size.width,
//                 child: !cameraController.value.isInitialized
//                     ? Container()
//                     : AspectRatio(
//                         aspectRatio: cameraController.value.aspectRatio,
//                         child: CameraPreview(cameraController),
//                       ),
//               ),
//             ),
//             Text(
//               result,
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
