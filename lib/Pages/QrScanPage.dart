import 'dart:io';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../core/AppBuilders.dart';
import '../core/AppColors.dart';
import '../core/AppFunctions.dart';

class QrScanPage extends StatefulWidget {
  const QrScanPage({Key? key}) : super(key: key);

  @override
  State<QrScanPage> createState() => _QrScanPageState();
}

class _QrScanPageState extends State<QrScanPage> {

  String ticket = '';
  @override

  readQrCode() async {
    try {
      String code = await FlutterBarcodeScanner.scanBarcode(
      "#FFFFFF",
      "Cancelar",
      false,
      ScanMode.QR
    );
    setState(() => ticket = code!='-1'?code:'Não validado');
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    int indexPage = 4;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if(ticket !='')
            Padding(padding: EdgeInsets.only(bottom: 24),
            child: Text(
              'Scan realizado com sucesso',
              style: TextStyle(fontSize: 20),),
            ),
            Padding(padding: EdgeInsets.only(bottom: 24),
            child: Text(
              '${ticket}',
              style: TextStyle(fontSize: 24,
              fontWeight: FontWeight.bold),),
            ),
          ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(AppColors.themeColor)
            ),
            onPressed: readQrCode,
            icon: Icon(Icons.qr_code),
            label: Text('Scanner'),
            )
      ])
      ),
       bottomNavigationBar: Builders.NavigationBar(context, indexPage),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          decoration: BoxDecoration(
              color: AppColors.themeColor,
              border: Border.all(color: AppColors.themeColor),
              shape: BoxShape.circle
          ),
          child: IconButton(
              iconSize: 50,
              color: Colors.white,
              icon: Icon(Icons.qr_code,),
              onPressed:(){AppFunctions.goToQrScanPage(context);}),
        )
    );

  }




}