import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kendaraan/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(
              image: CachedNetworkImageProvider(
                  "https://scontent.fsub1-2.fna.fbcdn.net/v/t1.15752-9/342362663_3336439663245045_1347736602975237684_n.png?_nc_cat=107&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeHRgmG7R-4xQpV4Ek5MYvq9Tg_9DFDdSTdOD_0MUN1JNy2kVIMiLxMzVIDZZq4n4XsMhXCswPkqHyiVlut4pr2I&_nc_ohc=rrtsWaE8BeoAX9JqqxO&_nc_ht=scontent.fsub1-2.fna&oh=03_AdRkUTuIFxJhjSAV0Ke4K8iQxfaex_9UcMYV8aQ8DG0fPw&oe=64759482"),
              width: 300,
              height: 300,
            ),
            const Text(
              "DETEKSI\nKENDARAAN YANG DILARANG DI TOL",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
              width: 50,
            ),
            SizedBox(
                height: 60,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Get.offAllNamed(Routes.LOGIN);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(20)),
                    child: const Text('LOGIN'))),
            const SizedBox(
              height: 10,
              width: 10,
            ),
            SizedBox(
                height: 60,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Get.offAllNamed(Routes.REGISTER);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(20)),
                    child: const Text('REGISTER')))
          ],
        ),
      ),
    );
  }
}
