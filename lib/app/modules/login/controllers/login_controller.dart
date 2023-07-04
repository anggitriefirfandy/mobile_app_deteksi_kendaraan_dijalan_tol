import 'dart:async';
import 'dart:convert';
import 'package:kendaraan/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../data/data_source/auth/signin/signin_request.dart';
import '../../../theme/colors.dart';
import '../../../utils/utils.dart';
import '../../home/bindings/home_binding.dart';

class LoginController extends GetxController {
  static RxBool isLoading = false.obs;
  // final username = ''.obs;
  // final password = ''.obs;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  RxBool visibility = true.obs;
  RxBool isLoadingLogin = false.obs;
  void loginUser(String email, String password) async {
    var url = 'http://192.168.1.9:5000/login';

    // String email = "fahmi@gmail.com";
    // String password = "fahmi123";

    isLoadingLogin.value = true;
    Timer(const Duration(seconds: 3), () {
      authService
          .doLogin(SignInRequest(email: email, password: password))
          .then((value) {
        authRepository.setLogin();
        print(" coba ${value.token}");
        authRepository.setToken(value.token.toString());
        print("${authRepository.getToken()}");
        Get.showSnackbar(GetSnackBar(
            message: "coba2 ${value.message}",
            title: "Success",
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16 / 2),
            duration: const Duration(milliseconds: 2000)));
        HomeBinding().dependencies();

        Get.offAllNamed(Routes.DASHBOARD);
      }).catchError((value) {
        Get.defaultDialog(
            title: "Ada Yang Salah Nih...",
            middleText: "Pastikan email dan password mu benar yah "
                "atau cek koneksi mu ",
            backgroundColor: secondaryColor,
            titleStyle: TextStyle(color: Colors.white),
            middleTextStyle: TextStyle(color: Colors.white),
            radius: 30);
      });
      isLoadingLogin(false);
    });
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}























// kodingan lama yang sudah pasti bisa
// class LoginController extends GetxController {
//   // final username = ''.obs;
//   // final password = ''.obs;
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();

//   void loginUser(String email, String password) async {
//     var url = 'http://192.168.1.9:5000/login';

//     // String email = "fahmi@gmail.com";
//     // String password = "fahmi123";

//     var body = {'email': email, 'password': password};
//     print(email);
//     print(password);
//     var response = await http.post(Uri.parse(url),
//         headers: {"Content-Type": "application/json"}, body: json.encode(body));

//     if (response.statusCode == 200) {
//       print("login berhasil");
//       Get.offAllNamed(Routes.DASHBOARD);
//       var responseData = json.decode(response.body);
//       var token = responseData['token'];
//       print("Token: $token");
//     } else if (response.statusCode == 400) {
//       print("Terjadi kesalahan: ${response.body}");
//     } else {
//       print("terjadi kesalahan saat melakukan login");
//     }
//   }
// }
