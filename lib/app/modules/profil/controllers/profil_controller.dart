import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../../data/data_source/core/profile/profile_response.dart';
import '../../../utils/utils.dart';

class ProfilController extends GetxController {
  //TODO: Implement ProfileController
  RxString firstname = "".obs;
  RxString lastname = "".obs;
  RxString email = "".obs;
  RxString current_password = "".obs;
  RxString new_password = "".obs;

  final count = 0.obs;
  @override
  void onInit() {
    currentUser();
    super.onInit();
  }

  void currentUser() {
    authService.currentUser().then((value) {
      if (value != null) {
        firstname(value.firstname);
        lastname(value.lastname);
        print("unik ${value.firstname}");
        email(value.email);
      } else {
        print("Data is null");
      }
    }).catchError((error) {
      if (error != null) {
        print("Error: $error");
      } else {
        print("Unknown Error");
      }
    });
  }

  void changeUser(String newFirstname, String newLastname) {
    ChangeUser changeUserData = ChangeUser(
      firstname: newFirstname,
      lastname: newLastname,
      // firstname: "irfandy",
      // lastname: "anggit",
    );
    authService.changeUser(changeUserData).then((response) {
      // Cek jika respons sukses
      if (response == "success") {
        // Perbarui nilai firstname dan lastname
        firstname(newFirstname);
        lastname(newLastname);
        print("berhasil: ${response.message}");
      } else {
        // Jika respons gagal, cetak pesan kesalahan
      }
    }).catchError((error) {
      // Tangani kesalahan
      print("Error: $error");
    });
  }

  void changePassword(String newPass1, String newPass2) {
    ChangePassword changePasswordData = ChangePassword(
      current_password: newPass1,
      new_password: newPass2,
      // current_password: "rief123",
      // new_password: "rief12345",
    );
    authService.changePassword(changePasswordData).then((response) {
      // Cek jika respons suksess
      if (response == "success") {
        // Perbarui nilai firstname dan lastname
        current_password(newPass1);
        new_password(newPass2);
        print("Password changed successfully!");
      } else {
        // Jika respons gagal, cetak pesan kesalahan
        print("Error: ${response.message}");
      }
    }).catchError((error) {
      // Tangani kesalahan
      print("Error: $error");
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
