import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'app/routes/app_pages.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Kendaraan Tol",
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
  ));
}

