import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:monitoracovid/core/AppFunctions.dart';
import 'package:monitoracovid/main.dart';

import '/../core/AppBuilders.dart';
import '/../core/AppColors.dart';

class AdminRoomsPage extends StatefulWidget {
  const AdminRoomsPage({Key? key}) : super(key: key);

  @override
  State<AdminRoomsPage> createState() => _AdminRoomsPage();
}

class _AdminRoomsPage extends State<AdminRoomsPage> {

  @override


  Widget build(BuildContext context) {
    int indexPage = 1;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.themeColor,
        centerTitle: true,
        title: Text("Salas"),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(child:
      SafeArea(child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Builders.AdminPageRooms(context, "Sala 1", false),
            Builders.AdminPageRooms(context, "Sala 2", true),
          ],
        ),
      ),
      )),
      bottomNavigationBar: Builders.AdminNavigationBar(context, indexPage),

    );
  }


}