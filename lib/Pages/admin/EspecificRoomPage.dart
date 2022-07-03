import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:monitoracovid/core/AppFunctions.dart';
import 'package:monitoracovid/main.dart';

import '/../core/AppBuilders.dart';
import '/../core/AppColors.dart';

class EspecificRoomPage extends StatefulWidget {
  final String roomName;
  const EspecificRoomPage({Key? key, required this.roomName}) : super(key: key);

  @override
  State<EspecificRoomPage> createState() => _EspecificRoomPage();
}

class _EspecificRoomPage extends State<EspecificRoomPage> {

  @override


  Widget build(BuildContext context) {
    int indexPage = 1;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.themeColor,
        centerTitle: true,
        title: Text(widget.roomName),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(child:
      SafeArea(child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [

          ],
        ),
      ),
      )),
      bottomNavigationBar: Builders.AdminNavigationBar(context, indexPage),

    );
  }


}