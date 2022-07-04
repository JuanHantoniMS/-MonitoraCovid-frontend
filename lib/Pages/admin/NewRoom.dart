import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../core/AppBuilders.dart';
import '../../core/AppColors.dart';


class NewRoom extends StatefulWidget {
  const NewRoom({Key? key}) : super(key: key);

  @override
  State<NewRoom> createState() => _NewRoom();
}

class _NewRoom extends State<NewRoom> {


  @override
  Widget build(BuildContext context) {
    int indexPage = 0;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.themeColor,
        centerTitle: true,
        title: Text("Criar sala"),
      ),
      body: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(top:30, left:10),
              child: Text(
                "Nome da sala",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),

          ),
          Container(
            padding: EdgeInsets.fromLTRB(10,0,10,0),
            width: screenWidth,
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: '',
              ),
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(top:30, left:10),
              child: Text(
                "Máximo de pessoas",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),

          ),
          Container(
            padding: EdgeInsets.fromLTRB(10,0,10,0),
            width: screenWidth,
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: '',
              ),
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(top:30, left:10),
              child: Text(
                "Tolerância",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10,0,10,0),
            width: screenWidth,
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: '',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10,20,10,0),
            width: screenWidth,
            child: ElevatedButton(

                style:ElevatedButton.styleFrom(

                  primary: AppColors.themeColor,
                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onPressed: () async{},
                child:  Padding(padding: EdgeInsets.only(top:15, bottom: 15),
                  child: Text('Gerar QR-code',
                    style: TextStyle(
                        color: Colors.white),
                  ),)
            ),
          ),

        ],

      ),
      bottomNavigationBar: Builders.AdminNavigationBar(context, indexPage),

    );

  }




}