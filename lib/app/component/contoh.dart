// import 'dart:math';

// import 'package:flutter/material.dart';

// import 'package:get/get.dart';
// import 'package:mrx_charts/mrx_charts.dart';

// import '../../../component/arrow_back.dart';
// import '../../../data/data_source/core/history/history_response.dart';
// import '../../../theme/colors.dart';
// import '../controllers/visualisasi_controller.dart';

// import 'dart:math';

// import 'package:flutter/material.dart';

// class VisualisasiView extends GetView<VisualisasiController> {
//   VisualisasiView({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final mediaQueryHeight = MediaQuery.of(context).size.height;
//     final mediaQueryWidht = MediaQuery.of(context).size.width;
//     final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
//     return Scaffold(
//       backgroundColor: bgColor,
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               height: bodyHeight * 0.1,
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   InkWell(
//                     onTap: () => Get.back(),
//                     child: Arrow_Back(),
//                   ),
//                   Text(
//                     'Visualisasi',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       color: bgColor,
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     padding: EdgeInsets.all(10),
//                   ),
//                 ],
//               ),
//             ),
//             Center(
//               child: Container(
//                 constraints: const BoxConstraints(
//                   maxHeight: 500.0,
//                   maxWidth: 600.0,
//                 ),
//                 padding: const EdgeInsets.all(24.0),
//                 child: Obx(
//                   () {
//                     return Chart(
//                       layers: [
//                         ChartAxisLayer(
//                           settings: ChartAxisSettings(
//                             x: ChartAxisSettingsAxis(
//                               frequency: 1.0,
//                               max: controller.history.length.toDouble(),
//                               min: 1,
//                               textStyle: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 10.0,
//                               ),
//                             ),
//                             y: ChartAxisSettingsAxis(
//                               frequency: 100.0,
//                               max: 300.0,
//                               min: 0.0,
//                               textStyle: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 10.0,
//                               ),
//                             ),
//                           ),
//                           labelX: (value) => value.toInt().toString(),
//                           labelY: (value) => value.toInt().toString(),
//                         ),
//                         ChartBarLayer(
//                           items: List.generate(
//                             controller.history.length,
//                             (index) => ChartBarDataItem(
//                               color: const Color(0xFF8043F9),
//                               value: double.parse(
//                                   controller.history[index].gasIjo),
//                               x: index.toDouble() + 1,
//                             ),
//                           ),
//                           settings: const ChartBarSettings(
//                             thickness: 10.0,
//                             radius: BorderRadius.all(Radius.circular(4.0)),
//                           ),
//                         ),
//                         ChartBarLayer(
//                           items: List.generate(
//                             controller.history.length,
//                             (index) => ChartBarDataItem(
//                               color: const Color(0xFF8043F9),
//                               value: double.parse(
//                                   controller.history[index].gasIjo),
//                               x: index.toDouble() + 1,
//                             ),
//                           ),
//                           settings: const ChartBarSettings(
//                             thickness: 10.0,
//                             radius: BorderRadius.all(Radius.circular(4.0)),
//                           ),
//                         ),
//                       ],
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }