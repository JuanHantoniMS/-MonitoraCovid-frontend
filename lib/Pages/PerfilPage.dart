import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:monitoracovid/core/AppFunctions.dart';
import 'package:monitoracovid/main.dart';

import '../core/AppBuilders.dart';
import '../core/AppColors.dart';

class PerfilPage extends StatefulWidget {
  final String name;
  final String userName;
  final String email;
  const PerfilPage({Key? key,
  required this.name,
  required this.userName,
  required this.email
  }) : super(key: key);

  @override
  State<PerfilPage> createState() => _PerfilPage();
}

class _PerfilPage extends State<PerfilPage> {

  @override


  Widget build(BuildContext context) {
    int indexPage = 1;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.themeColor,
          centerTitle: true,
          title: Text("Meu Perfil"),
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(child:
        SafeArea(child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Text(widget.name),
              Text("Username"),
              Text(widget.userName),
              Text("Email"),
              Text(widget.email)
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