import 'package:flutter/material.dart';
import '../core/AppBuilders.dart';
import '../core/AppColors.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(children: [
        Scaffold(
            body:
            Container(

                decoration: BoxDecoration(
                  color: AppColors.themeColor,
                ))
        ),


      ])),
    );
  }
}