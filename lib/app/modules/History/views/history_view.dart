import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/history_controller.dart';

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
            icon: Icon(Icons.arrow_back),
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
                margin: EdgeInsets.all(10),
                child: Table(
                  border: TableBorder.all(),
                  children: [
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
                margin: EdgeInsets.all(25),
                child: ElevatedButton(
                  child: Text(
                    'Download data',
                    style: TextStyle(fontSize: 15.0),
                  ),
                  onPressed: () {},
                ),
              ),
            ])));
  }
}
