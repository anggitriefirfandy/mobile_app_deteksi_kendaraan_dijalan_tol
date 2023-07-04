// import 'package:flutter/material.dart';

// import 'package:get/get.dart';

// import '../../../routes/app_pages.dart';
// import '../controllers/alarm_controller.dart';

// class AlarmView extends GetView<AlarmController> {
//   const AlarmView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: IconButton(
//           color: Colors.black,
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Get.offAllNamed(Routes.DASHBOARD);
//           },
//         ),
//       ),
//       body: Center(
//         child: Text(
//           'AlarmView is working',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class TestController extends GetxController {
  final listTextTabToggle = ["Alarm ON", "Alarm OFF"];

  RxInt tabTextIndexSelected = 0.obs;

  toggle(int index) => tabTextIndexSelected.value = index;
}

class AlarmView extends StatelessWidget {
  const AlarmView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.put(TestController());
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              color: Colors.black,
              icon: const Icon(Icons.arrow_back),
              padding: const EdgeInsets.all(20),
              onPressed: () {
                Get.offAllNamed(Routes.DASHBOARD);
              },
            ),
          ),
          body: Column(children: [
            Obx(
              () => FlutterToggleTab(
                selectedIndex: ctrl.tabTextIndexSelected.value,
                selectedBackgroundColors: const [
                  Colors.blue,
                  Colors.blueAccent
                ],
                selectedTextStyle: const TextStyle(color: Colors.white),
                unSelectedTextStyle: const TextStyle(),
                labels: ctrl.listTextTabToggle,
                selectedLabelIndex: (index) => ctrl.toggle(index),
                isScroll: false,
              ),
            ),
            Obx(
              () => Text(
                "Index selected : ${ctrl.tabTextIndexSelected.value}",
              ),
            )
          ])),
    );
  }
}
