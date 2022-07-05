import 'package:flutter/cupertino.dart';
import 'package:monitoracovid/Pages/admin/AdminRoomsPage.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';
import '../Pages/admin/EspecificRoomPage.dart';
import 'AppColors.dart';


class Builders{
  static Widget AdminNavigationBar(BuildContext context,
      int index){
    double iconSize = 30;
    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(

              iconSize: iconSize,
              icon: Icon(Icons.add_circle_outline,
                  color: index == 0 ?AppColors.themeColor : Colors.grey),
              onPressed:(){
                Navigator.pushNamed(context, '/newRoom');
              }),
          IconButton(
              iconSize: iconSize,
              icon: Icon(Icons.meeting_room,
                  color: index == 1 ?AppColors.themeColor : Colors.grey),
              onPressed:(){ Navigator.pushNamed(context, '/adminRoomPage');}),
        ],
      ),
    );
  }


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
              onPressed:(){
                 Navigator.pushNamed(context, '/perfilPage');
              }),

          Padding(padding: EdgeInsets.fromLTRB(30,0,30,0)),
          IconButton(
              iconSize: iconSize,
              icon: Icon(Icons.schedule,
                  color: index == 2 ?AppColors.themeColor : Colors.grey),
              onPressed:(){
                Navigator.pushNamed(context, '/agendamentoPage');
              }),
          IconButton(
              iconSize: iconSize,
              icon: Icon(Icons.meeting_room,
                  color: index == 3 ?AppColors.themeColor : Colors.grey),
              onPressed:(){
                Navigator.pushNamed(context, '/roomPage');
              })
        ],
      ),
    );
  }

  static Widget AdminPageRooms(
      BuildContext context,
      String roomName,
      bool safe
      ){
    return Padding(

      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>
              EspecificRoomPage(roomName: roomName,)
          ));
        },
        child: Container(

          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all( Radius.circular(10),),
              color: AppColors.themeColor
          ),
          child: Column(children: [
            Align(
                alignment: Alignment.centerLeft,
                child:  Padding(
                  padding: EdgeInsets.fromLTRB(15,20,0,0),
                  child: Text(
                    roomName,
                    style: TextStyle(
                        color: safe == true ?Colors.white : Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),)
            ),
            safe == false ? Flexible(child: Align(alignment: Alignment.bottomRight,
              child: Icon(Icons.error,
                color: Colors.orange,
              ),)):Container()

          ]),
        ),
      ),);
  }

  static Widget RoomPageRoom(
      BuildContext context,
      String roomName,
      bool safe
      ){
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all( Radius.circular(10),),
          color: AppColors.themeColor,
        ),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child:  Padding(
                padding: EdgeInsets.fromLTRB(15,20,0,0),
                child: Text(
                  roomName,
                  style: TextStyle(
                      color: safe == true ?Colors.white : Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),)
          ),
          safe == false ? Flexible(child: Align(alignment: Alignment.bottomRight,
            child: Icon(Icons.error,
              color: Colors.orange,
            ),)):Container()

        ]),
      ),);
  }


  static Widget HomePageRooms(
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
          color: AppColors.themeColor,
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