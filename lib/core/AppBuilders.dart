import 'package:flutter/cupertino.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';
import 'AppColors.dart';


class Builders{
  static Widget NavigationBar(BuildContext context,
      int index){
    double iconSize = 30;
    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(

              iconSize: iconSize,
              icon: Icon(Icons.home,
                  color: index == 0 ?AppColors.themeColor : Colors.grey),
              onPressed:(){
                Navigator.pushNamed(context, '/homePage');
              }),
          IconButton(
              iconSize: iconSize,
              icon: Icon(Icons.person,
                  color: index == 1 ?AppColors.themeColor : Colors.grey),
              onPressed:(){}),
          Padding(padding: EdgeInsets.fromLTRB(30,0,30,0)),
          IconButton(
              iconSize: iconSize,
              icon: Icon(Icons.schedule,
                  color: index == 2 ?AppColors.themeColor : Colors.grey),
              onPressed:(){
                Navigator.pushNamed(context, '/agendamento');
              }),
          IconButton(
              iconSize: iconSize,
              icon: Icon(Icons.meeting_room,
                  color: index == 3 ?AppColors.themeColor : Colors.grey),
              onPressed:(){})
        ],
      ),
    );
  }


  static Widget Rooms(
      BuildContext context,
      String roomName,
      String horarioInicial,
      String horarioFinal){
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all( Radius.circular(10),),
          color: AppColors.containerColor,
        ),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child:  Padding(
                padding: EdgeInsets.fromLTRB(15,20,0,0),
                child: Text(
                  roomName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),)
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child:  Padding(
                padding: EdgeInsets.fromLTRB(15,5,0,0),
                child: Text(
                  "${horarioInicial} - ${horarioFinal} ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20),
                ),)
          )

        ]),
      ),);
  }
}