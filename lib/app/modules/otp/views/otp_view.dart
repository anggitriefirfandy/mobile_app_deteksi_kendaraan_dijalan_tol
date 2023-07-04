import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../controllers/otp_controller.dart';

const Color primaryColor = Color(0xFF121212);
const Color accentPurpleColor = Color(0xFF6A53A1);
const Color accentPinkColor = Color(0xFFF99BBD);
const Color accentDarkGreenColor = Color(0xFF115C49);
const Color accentYellowColor = Color(0xFFFFB612);
const Color accentOrangeColor = Color(0xFFEA7A3B);

class OtpView extends GetView<OtpController> {
  OtpView({Key? key}) : super(key: key);
  OtpController verifyOtpController = Get.put(OtpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Verifikasi Akun Anda",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Masukan kode OTP pada Email Anda",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 5,
              ),
              OtpTextField(
                handleControllers: (controllers) => OtpController(),
                numberOfFields: 5,
                borderColor: const Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  verifyOtpController.verifyOTP(verificationCode);
                }, // end onSubmit
              ),
            ],
          )),
    );
  }
}



















// class OtpView extends StatefulWidget {
//   @override
//   _OtpViewState createState() => _OtpViewState();
// }

// class _OtpViewState extends State<OtpView> {
//   late List<TextStyle?> otpTextStyles;
//   late List<TextEditingController?> controls;
//   int numberOfFields = 5;
//   bool clearText = false;

//   @override
//   Widget build(BuildContext context) {
//     ThemeData theme = Theme.of(context);

//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//       ),
//       body: Container(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 "Verifikasi Akun Anda",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 "Masukan kode OTP pada Email Anda",
//                 style: TextStyle(fontSize: 20),
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               OtpTextField(
//                 numberOfFields: 5,
//                 borderColor: Color(0xFF512DA8),
//                 //set to true to show as box or false to show as dash
//                 showFieldAsBox: true,
//                 //runs when a code is typed in
//                 onCodeChanged: (String code) {
//                   //handle validation or checks here
//                 },
//                 //runs when every textfield is filled
//                 onSubmit: (String verificationCode) {
//                   if (verificationCode == '00000') {
//                     showDialog(
//                       context: context,
//                       builder: (context) {
//                         return AlertDialog(
//                           title: Text("Verifikasi Benar"),
//                           content:
//                               Text('Kode verifikasi anda $verificationCode'),
//                           actions: [
//                             TextButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => LoginView()),
//                                 );
//                               },
//                               child: Text("Login"),
//                             ),
//                           ],
//                         );
//                       },
//                     );
//                   } else {
//                     showDialog(
//                       context: context,
//                       builder: (context) {
//                         return AlertDialog(
//                           title: Text("Verifikasi Salah"),
//                           content: Text('Kode salah'),
//                         );
//                       },
//                     );
//                   }
//                 }, // end onSubmit
//               ),
//             ],
//           )),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:kendaraan/app/modules/login/views/login_view.dart';
// import 'package:kendaraan/app/modules/otp/controllers/otp_controller.dart';

// class OtpView extends GetView<OtpController> {
//   final otpController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//       ),
//       body: Container(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               "Verifikasi Akun Anda",
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               "Masukan kode OTP pada Email Anda",
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 5),
//             TextField(
//               controller: otpController,
//               decoration: InputDecoration(
//                 labelText: 'OTP',
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 var otp = otpController.text;
//                 controller.verifyOTP(otp);
//               },
//               child: Text("Verifikasi"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
