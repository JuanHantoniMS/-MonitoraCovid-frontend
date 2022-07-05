import 'package:flutter/material.dart';
import 'package:monitoracovid/Pages/PerfilPage.dart';

class  AppFunctions{
  static void goToQrScanPage(BuildContext context){
    Navigator.pushNamed(context, '/qrScanPage');
  }
  static void goToPerfilPage(BuildContext context,){
    Navigator.push(context, MaterialPageRoute(builder: (context) =>
              PerfilPage(name: "João Lucas Cordeiro", userName: "Jlucas", email: "lucasjcordeiro@outlook.com" )
          ));
  }
}