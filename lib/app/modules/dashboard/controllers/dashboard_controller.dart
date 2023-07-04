import 'package:get/get.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  var selectedIndex = 0.obs;

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }

  final count = 0.obs;



  void increment() => count.value++;
}
