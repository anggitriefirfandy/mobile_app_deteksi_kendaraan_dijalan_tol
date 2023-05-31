import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  static int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  static DashboardController _controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Selamat Datang",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: GridView.count(
          padding: const EdgeInsets.all(15),
          crossAxisCount: 2,
          children: <Widget>[
            Text("Silakan pilih aktivitas dibawah ini"),
            SizedBox(
              height: 5,
            ),
            Card(
              margin: const EdgeInsets.all(5),
              color: Color.fromARGB(255, 42, 28, 147),
              child: InkWell(
                onTap: () {
                  Get.offAllNamed(Routes.CCTV);
                },
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.camera_alt_sharp,
                        size: 70,
                        color: Colors.white,
                      ),
                      Text("CCTV",
                          style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              color: Color.fromARGB(255, 42, 28, 147),
              child: InkWell(
                onTap: () {
                  Get.offAllNamed(Routes.HISTORY);
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.history,
                        size: 70,
                        color: Colors.white,
                      ),
                      Text("History",
                          style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              color: Color.fromARGB(255, 42, 28, 147),
              child: InkWell(
                onTap: () {
                  Get.offAllNamed(Routes.ALARM);
                },
                splashColor: Colors.orangeAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.warning_amber_sharp,
                        size: 70,
                        color: Colors.white,
                      ),
                      Text("Alarm",
                          style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              color: Color.fromARGB(255, 42, 28, 147),
              child: InkWell(
                onTap: () {
                  Get.offAllNamed(Routes.ABOUT);
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.window,
                        size: 70,
                        color: Colors.white,
                      ),
                      Text("About",
                          style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
