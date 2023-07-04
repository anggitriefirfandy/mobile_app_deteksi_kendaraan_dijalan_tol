// import 'package:get/get.dart';

// class OtpController extends GetxController {
//   //TODO: Implement OtpController

//   final count = 0.obs;
//   @override
//   void onInit() {
//     super.onInit();
//   }

//   @override
//   void onReady() {
//     super.onReady();
//   }

//   @override
//   void onClose() {
//     super.onClose();
//   }

//   void increment() => count.value++;
// }
import 'dart:convert';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:kendaraan/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../../email.dart';

class OtpController extends GetxController {
  // final databaseName = 'kendaraan'; // Nama database XAMPP Anda
  final databaseName = 'railway';
  final tableName = 'users'; // Nama tabel dalam database

  void verifyOTP(String otp) async {
    var url =
        'https://anggit.up.railway.app/verifikasi'; // Ganti dengan URL endpoint Flask yang sesuai

    var body = {
      'otp': otp,
      'email': authdata.email
    }; // Data OTP yang akan dikirim

    // Mengirim permintaan POST ke endpoint Flask
    var response = await http.post(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: json.encode(body),
    );
    print(response.body);
    if (response.statusCode == 200) {
      print(response);
      // OTP berhasil diverifikasi
      print('OTP diverifikasi dengan sukses.');
      await showPlatformDialog(
        context: Get.overlayContext!,
        builder: (_) => BasicDialogAlert(
          title: const Text("OTP SUKSES"),
          content: const Text("Silahkan Menuju halaman Login."),
          actions: <Widget>[
            BasicDialogAction(
              title: const Text("OK"),
              onPressed: () {
                // Menutup AlertDialog dan pindah ke halaman OTP
                Get.back(); // Menutup AlertDialog
                Get.offAllNamed(Routes.LOGIN); // Pindah ke halaman OTP
              },
            ),
          ],
        ),
      );
      // Perbarui nilai kondisi pada database
      // Tambahkan tindakan yang diinginkan setelah verifikasi OTP berhasil
    } else {
      // Verifikasi OTP gagal atau terjadi kesalahan lainnya
      print('Verifikasi OTP gagal.');
    }
  }

  // Future<void> updateConditionInDatabase(int conditionValue) async {
  //   final databaseFactory = databaseFactoryFfiWeb;
  //   final databasePath = await getDatabasesPath();
  //   final path = join(databasePath, databaseName);

  //   final database = await databaseFactory.openDatabase(path);
  //   await database.update(tableName, {'is_verified': conditionValue},
  //       where: 'is_verified = ?', whereArgs: [0]);

  //   await database.close();
  // }
}
