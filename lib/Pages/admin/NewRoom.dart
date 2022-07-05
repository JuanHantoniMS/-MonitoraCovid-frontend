import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:monitoracovid/Pages/admin/CreatedRoomPage.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../core/AppBuilders.dart';
import '../../core/AppColors.dart';


class NewRoom extends StatefulWidget {
  const NewRoom({Key? key}) : super(key: key);

  @override
  State<NewRoom> createState() => _NewRoom();
}

class _NewRoom extends State<NewRoom> {
final _formKey = GlobalKey<FormState>();

final roomNameController = TextEditingController();
final maxPeopleController = TextEditingController();
final toleranceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    int indexPage = 0;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.themeColor,
        centerTitle: true,
        title: Text("Criar sala"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Form(
          key: _formKey,
          child: Column(
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
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'Insira um nome válido';
                }
                return null;
              },
              controller: roomNameController,
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
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'Insira o número máximo de pessoas';
                }
                return null;
              },
              controller: maxPeopleController,
              keyboardType: TextInputType.number,
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
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'Insira a tolerância de atraso';
                }
                return null;
              },
              controller: toleranceController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: '(minutos)',
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
                onPressed: () async{
                  if (_formKey.currentState!.validate()) {
                  
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>
                      CreatedRoomPage(
                        roomName: roomNameController.text, 
                        maxPeople: maxPeopleController.text, 
                        tolerancia: toleranceController.text,
                        qrCode:
                          QrImage(data: roomNameController.text)
                      ,)
                  ));
                }
       
                },
                child:  Padding(padding: EdgeInsets.only(top:15, bottom: 15),
                  child: Text('Gerar QR-code',
                    style: TextStyle(
                        color: Colors.white),
                  ),)
            ),
          ),
          
        ],

      ),)
      ),
      bottomNavigationBar: Builders.AdminNavigationBar(context, indexPage),

    );

  }




}