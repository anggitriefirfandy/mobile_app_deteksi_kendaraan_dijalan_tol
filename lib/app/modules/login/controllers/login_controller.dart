import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  // final username = ''.obs;
  // final password = ''.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void loginUser(String email, String password) async {
    var url = 'http://192.168.1.7:5000/login';

    // String email = "fahmi@gmail.com";
    // String password = "fahmi123";

    var body = {'email': email, 'password': password};
    print(email);
    print(password);
    var response = await http.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"}, body: json.encode(body));

    if (response.statusCode == 200) {
      print("login berhasil");
      var responseData = json.decode(response.body);
      var token = responseData['token'];
      print("Token: $token");
    } else if (response.statusCode == 400) {
      print("Terjadi kesalahan: ${response.body}");
    } else {
      print("terjadi kesalahan saat melakukan login");
    }
  }
}
  // void updateUsername(String value) {
  //   username.value = value;
  // }

  // void updatePassword(String value) {
  //   password.value = value;
  // }

//   void login() {
//     String usernameValue = username.value;
//     String passwordValue = password.value;
//     print(usernameValue);
//     print(passwordValue);
//     loginUser(usernameValue, passwordValue).then((response) {
//       if (response['success']) {
//         // Login berhasil
//         print('Login Berhasil');
//       } else {
//         // Login gagal
//         print('Login Gagal');
//       }
//     }).catchError((error) {
//       // Terjadi error saat melakukan permintaan HTTP
//       print('Terjadi kesalahan saat melakukan login: $error');
//     });
//   }

//   Future<Map<String, dynamic>> loginUser(String email, String password) async {
//     final response = await http.post(
//       Uri.parse('http://192.168.1.4:5000/login'),
//       body: {
//         'email': email,
//         'password': password,
//       },
//     );

//     if (response.statusCode == 200) {
//       // Berhasil login
//       return {
//         'success': true,
//         'message': 'Login Berhasil',
//       };
//     } else {
//       // Login gagal
//       return {
//         'success': false,
//         'message': 'Login Gagal',
//       };
//     }
//   }
// }




// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:kendaraan/app/routes/app_pages.dart';

// class LoginController extends GetxController {
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final email = ''.obs;
//   final password = ''.obs;

//   void updateEmail(String value) {
//     email.value = value;
//   }

//   void updatePassword(String value) {
//     password.value = value;
//   }

//   void login() {
//     loginUser(email.value, password.value).then((response) {
//       if (response['success']) {
//         // Login berhasil, akses token dapat digunakan
//         final token = response['token'];
//         // Lakukan sesuatu dengan token, seperti menyimpannya di dalam session atau shared preferences

//         // Pindah ke halaman Dashboard
//         Get.offAllNamed(Routes.DASHBOARD);
//       } else {
//         // Login gagal, tampilkan pesan kesalahan
//         final message = response['message'];
//         Get.snackbar('Login Gagal', message);
//       }
//     }).catchError((error) {
//       // Terjadi error saat melakukan permintaan HTTP
//       Get.snackbar('Error', 'Terjadi kesalahan saat melakukan login');
//     });
//   }

//   Future<Map<String, dynamic>> loginUser(String email, String password) async {
//     final response = await http.post(
//       Uri.parse('http://192.168.1.9:5000/login'),
//       body: {
//         'email': email,
//         'password': password,
//       },
//     );

//     if (response.statusCode == 200) {
//       // Berhasil login
//       final responseData = jsonDecode(response.body);
//       return {
//         'success': true,
//         'message': 'Login Berhasil',
//         'token': responseData['token'],
//       };
//     } else {
//       // Login gagal
//       return {
//         'success': false,
//         'message': 'Login Gagal',
//       };
//     }
//   }
// }
