import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';
import '../core/AppColors.dart';
import '../core/AppImages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
             Container(
                  decoration: BoxDecoration(gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      AppColors.themeColor,
                      AppColors.themeColor,
                      Color(0xff239393),
                    ],),)
              ),

            SingleChildScrollView(
              reverse: true,

              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          width: 0.8 * screenWidth,
                          height: 0.5 * screenHeight,
                          AppImages.logo,
                        ),
                      ),
                      const DefaultTextStyle(
                        child: Text("MONITORA",),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 48,
                            fontWeight: FontWeight.bold),
                      ),
                      const DefaultTextStyle(
                        child: Text("COVID",),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 48,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20),
                        child: Container(
                          width: 0.8 * screenWidth,
                          height: 0.15 * screenHeight,
                          child: TextFormField(
                            scrollPadding: EdgeInsets.only(bottom: 50),
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.circular(50.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.white),
                                  borderRadius:
                                  BorderRadius.circular(50.0),
                                ),
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                )),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white, fontSize: 15.0),
                          ),
                        ),),
                      Padding(padding: EdgeInsets.only(top: 20),
                        child: Container(
                          width: 0.8 * screenWidth,
                          height: 0.15 * screenHeight,
                          child: TextFormField(
                            scrollPadding: EdgeInsets.only(bottom: 50),
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: 'Senha',
                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.circular(50.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.white),
                                  borderRadius:
                                  BorderRadius.circular(50.0),
                                ),
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                )),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white, fontSize: 15.0),
                          ),
                        ),),
                      Container(
                        padding: EdgeInsets.only(top: 20.0),
                        child: TextButton(
                          onPressed: ()  {Navigator.pushNamed(context, '/homePage');},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(30.0),
                                side: BorderSide(color: Colors.white)),
                          ),
                          child: Ink(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[
                                      AppColors.themeColor,
                                      AppColors.themeColor,
                                      Color(0xff239393),
                                    ],),
                                borderRadius:
                                BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                height: 0.12 * screenHeight,
                                width: 0.70 * screenHeight,
                                alignment: Alignment.center,
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 21.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: screenHeight * 0.03, bottom: screenHeight * 0.03),
                        child: Container(
                          width: 0.9 * screenWidth,
                            child: Row(children: <Widget>[
                              Expanded(
                                  child: Divider(
                                    color: Colors.black,
                                    thickness: 1,
                                  )),
                            ])),
                      ),
                   Padding(padding: EdgeInsets.only(bottom: 5),
                   child:    Text("Ainda não possui uma conta?",
                       style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                           fontWeight: FontWeight.bold)),),
                      Container(
                        padding: EdgeInsets.only(top: 5.0),
                        child: TextButton(
                          onPressed: () {Navigator.pushNamed(context, '/cadastroPage');},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(30.0),
                                side: BorderSide(color: Colors.white)),
                          ),
                          child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: <Color>[
                                    AppColors.themeColor,
                                    AppColors.themeColor,
                                    Color(0xff239393),
                                  ],),
                                borderRadius:
                                BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                height: 0.12 * screenHeight,
                                width: 0.70 * screenHeight,
                                alignment: Alignment.center,
                                child: Text(
                                  'Cadastro',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 21.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              )),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
