import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../data/data_source/auth/change_password/change_password.dart';
import '../../../utils/utils.dart';
class ChangePasswordController extends GetxController {
  //TODO: Implement ChangePasswordController

// final formKey = GlobalKey<FormState>();

//   final TextEditingController email = TextEditingController();

//   RxBool isLoadingChangePassword = false.obs;

//   void doChangePassword(String email) {
//     isLoadingChangePassword.value = true;
//     isLoadingChangePassword(true);
//     Timer(const Duration(seconds: 3), () {
//       authService
//           .doChagePassword(ChangePasswordRequest(email: email))
//           .then((value) {
//         Get.showSnackbar(GetSnackBar(
//             message: value.message,
//             title: "Success",
//             padding: const EdgeInsets.all(16),
//             margin: const EdgeInsets.all(16 / 2),
//             duration: const Duration(milliseconds: 2000)));
       
//       }).catchError((value) {
//         Get.showSnackbar(GetSnackBar(
//             message: value.message,
//             title: "Error",
//             padding: const EdgeInsets.all(16),
//             margin: const EdgeInsets.all(16 / 2),
//             duration: const Duration(milliseconds: 2000)));
//       });
//     });

//     isLoadingChangePassword(false);
//   }
 
}
