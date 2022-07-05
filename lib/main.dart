import 'package:flutter/material.dart';
import 'package:monitoracovid/Pages/CadastroPage.dart';
import 'package:monitoracovid/Pages/HomePage.dart';
import 'package:monitoracovid/Pages/LoginPage.dart';
import 'package:monitoracovid/Pages/PerfilPage.dart';
import 'package:monitoracovid/Pages/QrScanPage.dart';
import 'package:monitoracovid/Pages/RoomPage.dart';
import 'package:monitoracovid/Pages/SplashPage.dart';
import 'package:monitoracovid/Pages/admin/AdminRoomsPage.dart';
import 'package:monitoracovid/Pages/admin/CreatedRoomPage.dart';

import 'Pages/AgendamentoPage.dart';
import 'Pages/admin/NewRoom.dart';


void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/splashPage",
      routes: {
        "/homePage": (context)=> HomePage(),
       
        "/agendamentoPage": (context)=> AgendamentoPage(),
        "/roomPage": (context) => RoomPage(),
        "/qrScanPage": (context) => QrScanPage(),

        "/newRoom" : (context) => NewRoom(),
        
        "/adminRoomPage" : (context) => AdminRoomsPage(),
        "/" : (context) => SplashPage(),
        "/loginPage" : (context) => LoginPage(),
        "/cadastroPage" : (context) => CadastroPage(),
        "/splashPage" : (context) => SplashPage(),
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,

      ),

    );




  }


}