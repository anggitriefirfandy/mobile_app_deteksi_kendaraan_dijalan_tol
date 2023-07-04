import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kendaraan/app/modules/login/views/login_view.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterSplashScreen.fadeIn(
          backgroundColor: Colors.white,
          childWidget: const SizedBox(
            height: 500,
            width: 500,
            child: Image(
                image: CachedNetworkImageProvider(
                    "https://res.cloudinary.com/dk55ik2ah/image/upload/v1683267652/logo_rs4h6x.png")),
          ),
          defaultNextScreen: LoginView(),
        ),
      ),
    );
  }
}
