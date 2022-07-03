import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:monitoracovid/core/AppFunctions.dart';
import 'package:monitoracovid/main.dart';

import '../core/AppBuilders.dart';
import '../core/AppColors.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({Key? key}) : super(key: key);

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {

  @override


  Widget build(BuildContext context) {
    int indexPage = 3;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(child:
        SafeArea(child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Builders.RoomPageRoom(context, "Sala 1", false),
              Builders.RoomPageRoom(context, "Sala 2", true),
            ],
          ),
        ),
        )),
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
              onPressed:(){
                AppFunctions.goToQrScanPage(context);
              }),
        )
    );
  }


}