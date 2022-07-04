import 'package:flutter/material.dart';

import '../core/AppColors.dart';
import '../core/AppImages.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<CadastroPage> {
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

              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Align(
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        width: 0.8 * screenWidth,
                        height: 0.5 * screenHeight,
                        AppImages.logo,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 25),
                      child: const DefaultTextStyle(
                        child: Text("CADASTRO",),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20),
                      child: Container(
                        width: 0.8 * screenWidth,
                        height: 0.15 * screenHeight,
                        child: TextFormField(
                          scrollPadding: EdgeInsets.only(bottom: 50),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: 'Nome',
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
                              labelText: 'Username',
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
                    Padding(padding: EdgeInsets.only(top: 20),
                      child: Container(
                        width: 0.8 * screenWidth,
                        height: 0.15 * screenHeight,
                        child: TextFormField(
                          scrollPadding: EdgeInsets.only(bottom: 50),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: 'Confirmar senha',
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
                        onPressed: () {Navigator.pushNamed(context, '/loginPage');},
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
                              height: 0.15 * screenHeight,
                              width: 0.40 * screenHeight,
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
