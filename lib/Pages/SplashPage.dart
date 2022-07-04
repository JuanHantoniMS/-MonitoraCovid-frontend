import 'package:flutter/material.dart';
import 'package:monitoracovid/Pages/LoginPage.dart';
import 'dart:async';
import '../core/AppBuilders.dart';
import '../core/AppColors.dart';
import '../core/AppImages.dart';
import 'admin/NewRoom.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState(){
    super.initState();

    Timer(Duration(seconds: 3),(){
      Navigator.pushNamed(context, '/loginPage');
     // Navigator.push(context, MaterialPageRoute(builder: (context)=>NewRoom(),));
    });

  }

  @override
  Widget build(BuildContext context) {

    var screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    var screenHeight = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      body: SafeArea(child: Stack(children: [
        Scaffold(
            body:
            Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      AppColors.themeColor,
                      AppColors.themeColor,
                      Color(0xff239393),
                    ])),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                width: 0.8 * screenWidth,
                height: 0.5 * screenHeight,
                AppImages.logo,
              ),
            ),)
        ),


      ])),
    );
  }
}