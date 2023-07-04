import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/history_controller.dart';



// class HistoryView extends StatelessWidget {
//   final HistoryController _historyController = Get.put(HistoryController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('View History'),
//       ),
//       body: Obx(
//         () {
//           if (_historyController.isLoading.value) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           } else if (_historyController.historyList.isEmpty) {
//             return Center(
//               child: Text('No history found'),
//             );
//           } else {
//             return ListView.builder(
//               itemCount: _historyController.historyList.length,
//               itemBuilder: (context, index) {
//                 final history = _historyController.historyList[index];
//                 return ListTile(
//                   title: Text(history.nama),
//                   subtitle: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Jenis Kendaraan: ${history.jenisKendaraan}'),
//                       Text('Tanggal: ${history.tanggal}'),
//                       Text('Waktu: ${history.waktu}'),
//                     ],
//                   ),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            color: Colors.black,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Get.offAllNamed(Routes.DASHBOARD);
            },
          ),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10),
                child: Table(
                  border: TableBorder.all(),
                  children: const [
                    TableRow(children: [
                      Text('Jenis Kendaraan',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Tanggal terdeteksi',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ]),
                    TableRow(children: [
                      Text('Motor', textAlign: TextAlign.center),
                      Text('01/05/2023', textAlign: TextAlign.center),
                    ]),
                    TableRow(children: [
                      Text('Sepeda', textAlign: TextAlign.center),
                      Text('02/05/2023', textAlign: TextAlign.center),
                    ]),
                    TableRow(children: [
                      Text('Motor', textAlign: TextAlign.center),
                      Text('03/05/2023', textAlign: TextAlign.center),
                    ]),
                    TableRow(children: [
                      Text('Motor', textAlign: TextAlign.center),
                      Text('03/05/2023', textAlign: TextAlign.center),
                    ]),
                    TableRow(children: [
                      Text('Sepeda', textAlign: TextAlign.center),
                      Text('03/05/2023', textAlign: TextAlign.center),
                    ]),
                    TableRow(children: [
                      Text('Motor', textAlign: TextAlign.center),
                      Text('05/05/2023', textAlign: TextAlign.center),
                    ]),
                    TableRow(children: [
                      Text('Motor', textAlign: TextAlign.center),
                      Text('05/05/2023', textAlign: TextAlign.center),
                    ]),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                child: ElevatedButton(
                  child: const Text(
                    'Download data',
                    style: TextStyle(fontSize: 15.0),
                  ),
                  onPressed: () {},
                ),
              ),
            ])));
  }
}
