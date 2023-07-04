import 'dart:convert';
import 'package:kendaraan/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../../../../email.dart';

class RegisterController extends GetxController {
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void registerUser(String firstname, String lastname, String email,
      String password, String confirmPassword) async {
    var url = 'https://anggit.up.railway.app/register';

    // Mengambil nilai dari input field
    // String firstname = firstnameController.text;
    // String lastname = lastnameController.text;
    // String email = emailController.text;
    // String password = passwordController.text;
    // String confirmPassword = confirmPasswordController.text;

    // String firstname = "dani";
    // String lastname = "waluyo";
    // String email = "waluyo@gmail.com";
    // String password = "waluyo123";
    // String confirmPassword = "waluyo123";

    // Membuat body request dalam format JSON
    var body = {
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'password': password,
      'confirm_password': confirmPassword,
    };
    authdata.email = email;

    // Mengirim permintaan POST ke endpoint Flask
    print(firstname);
    var response = await http.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"}, body: json.encode(body));

    if (response.statusCode == 201) {
      // Registrasi berhasil
      print('Registrasi Berhasil. Silahkan cek email untuk verifikasi.');
      Get.offAllNamed(Routes.OTP);
    } else if (response.statusCode == 400) {
      // Kesalahan pada permintaan (misalnya password tidak cocok)
      print('Terjadi kesalahan: ${response.body}');
    } else {
      // Kesalahan lainnya
      print('Terjadi kesalahan saat melakukan registrasi.');
    }
  }
}
