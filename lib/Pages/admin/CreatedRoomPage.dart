import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:screenshot/screenshot.dart';
import '/../core/AppColors.dart';

class CreatedRoomPage extends StatefulWidget {
  final String roomName;
  final String maxPeople;
  final String tolerancia;
  final QrImage qrCode;
  const CreatedRoomPage({Key? key, 
  required this.roomName,
  required this.maxPeople,
  required this.tolerancia,
   required this.qrCode}) : super(key: key);

  @override
  State<CreatedRoomPage> createState() => _CreatedRoomPage();
}

class _CreatedRoomPage extends State<CreatedRoomPage> {

  @override
 final _screenshotController = ScreenshotController();


  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.themeColor,
        centerTitle: true,
        title: Text("Dados da sala"),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(child:
      SafeArea(child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            const Text(
                "Nome da sala",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            Text(
                widget.roomName,
                // ignore: prefer_const_constructors
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    ),
              ),
            const Padding(padding: EdgeInsets.only(top:30)),
            const Text(
                "Máximo de pessoas",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            Text(
                widget.maxPeople,
                // ignore: prefer_const_constructors
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    ),
              ),
            const Padding(padding: EdgeInsets.only(top:30)),
            const Text(
                "Tolerância de atraso",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            Text(
                widget.tolerancia,
                // ignore: prefer_const_constructors
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,),
              ), 
            const Padding(padding: EdgeInsets.only(top:30)), 
            TextButton(
            onPressed: () async {
            
              
            },
            child: const Text("capture qr code")),
        
          Center(
              child: Screenshot(
                  controller: _screenshotController,
                  child: buildQrCode(widget.roomName))),
          ],
        ),
      ),
      )),
     
    );
  }

Widget buildQrCode(String roomName) => QrImage(data:roomName );



}