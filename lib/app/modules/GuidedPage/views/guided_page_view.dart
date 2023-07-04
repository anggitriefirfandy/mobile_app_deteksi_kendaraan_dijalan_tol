// import 'package:flutter/material.dart';

// import 'package:get/get.dart';

// import '../controllers/guided_page_controller.dart';

// class GuidedPageView extends GetView<GuidedPageController> {
//   const GuidedPageView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('GuidedPageView'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Text(
//           'GuidedPageView is working',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AccessCameraPage extends StatefulWidget {
  const AccessCameraPage({super.key});

  @override
  _AccessCameraPageState createState() => _AccessCameraPageState();
}

class _AccessCameraPageState extends State<AccessCameraPage> {
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
        title: const Text("Access Camera"),
      ),
      body: Container(
        child: Center(
          child: _image == null ? const Text("No Image") : Image.file(_image!),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            openCamera();
          },
          child: const Icon(
            Icons.add_a_photo,
            color: Colors.white,
          )),
    );
  }
}
