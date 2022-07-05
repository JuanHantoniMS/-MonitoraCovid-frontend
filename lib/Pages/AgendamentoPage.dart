import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../core/AppBuilders.dart';
import '../core/AppColors.dart';
import '../core/AppFunctions.dart';

class AgendamentoPage extends StatefulWidget {
  const AgendamentoPage({Key? key}) : super(key: key);

  @override
  State<AgendamentoPage> createState() => _AgendamentoPageState();
}

class _AgendamentoPageState extends State<AgendamentoPage> {
  bool keyboardOpen = false;
  int indexPage=2;
  DateTime date = DateTime.now() ;
  TimeOfDay firstTime = TimeOfDay(hour: 0,minute: 0);
  TimeOfDay secondTime = TimeOfDay(hour: 0,minute: 0);

  var room = "Sala 1";
  @override


  Widget build(BuildContext context) {

    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.themeColor,
          centerTitle: true,
          title: Text(" Agendamento"),
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(child:
        SafeArea(child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Container(),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top:100, left:10),
                  child: Text(
                    "Espaço que você vai utilizar",
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
                child: ElevatedButton(
                    style:ElevatedButton.styleFrom(

                      primary: Colors.white,
                      shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(
                            color: Colors.grey,
                          )),
                    ),
                    onPressed: (){},
                    child: Text('${room}',
                      style: TextStyle(
                          color: Colors.grey),
                    )
                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top:30, left:10),
                  child: Text(
                    "Em que dia você usará o espaço?",
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
                child: ElevatedButton(
                    style:ElevatedButton.styleFrom(

                      primary: Colors.white,
                      shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(
                            color: Colors.grey,
                          )),
                    ),
                    onPressed: () async{
                      DateTime? newDate = await showDatePicker(context: context,
                        initialDate: date,
                        firstDate: DateTime(2001),
                        lastDate: DateTime(2030),
                        builder: (context, child) {
                          return Theme(
                            data: Theme.of(context).copyWith(
                              colorScheme: ColorScheme.light(
                                primary: AppColors.themeColor, // <-- SEE HERE
                                onPrimary: Colors.black, // <-- SEE HERE
                                onSurface: Colors.black, // <-- SEE HERE
                              ),

                            ),
                            child: child!,
                          );
                        },
                      );
                      if(newDate == null) return;

                      setState(() => date = newDate);
                    },
                    child:  Text('${date.day}/${date.month}/${date.year}',
                      style: TextStyle(
                          color: Colors.grey),
                    )
                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top:30, left:10),
                  child: Text(
                    "Qual o horário de entrada?",
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
                child: ElevatedButton(
                    style:ElevatedButton.styleFrom(

                      primary: Colors.white,
                      shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(
                            color: Colors.grey,
                          )),
                    ),
                    onPressed: (){
                      pickFirstTime(context);
                    },
                    child: Text('${firstTime.hour.toString().padLeft(2,'0')}:${firstTime.minute.toString().padLeft(2,'0')}',
                      style: TextStyle(
                          color: Colors.grey),
                    )
                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top:30, left:10),
                  child: Text(
                    "Qual o horário de saída?",
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
                child: ElevatedButton(
                    style:ElevatedButton.styleFrom(

                      primary: Colors.white,
                      shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(
                            color: Colors.grey,
                          )),
                    ),
                    onPressed: (){
                      pickSecondTime(context);
                    },
                    child:  Text('${secondTime.hour.toString().padLeft(2,'0')}:${secondTime.minute.toString().padLeft(2,'0')}',
                      style: TextStyle(
                          color: Colors.grey),
                    )
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
                    },
                    child:  Padding(padding: EdgeInsets.only(top:15, bottom: 15),
                      child: Text('Agendar',
                        style: TextStyle(
                            color: Colors.white),
                      ),)
                ),
              ),
              Padding( padding: EdgeInsets.only(top: 50) )
            ],
          ),
        ),
        )),
        bottomNavigationBar: Builders.NavigationBar(context, indexPage),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          decoration: BoxDecoration(
              color: AppColors.themeColor,
              border: Border.all(color: AppColors.themeColor),
              shape: BoxShape.circle
          ),
          child: IconButton(
              iconSize: 50,
              color: Colors.white,
              icon: Icon(Icons.qr_code,),
              onPressed:(){AppFunctions.goToQrScanPage(context);}),
        )
    );
  }

  Future pickFirstTime(BuildContext context) async{
    final initialTime = TimeOfDay(hour: 0,minute: 0);
    final newTime = await showTimePicker(
      context: context,
      initialTime:initialTime,
    );

    if(newTime == null) return;
    setState(() =>  firstTime = newTime);
  }
  Future pickSecondTime(BuildContext context) async{
    final initialTime = TimeOfDay(hour: 0,minute: 0);
    final newTime = await showTimePicker(

      context: context,
      initialTime:initialTime,
    );

    if(newTime == null) return;
    setState(() =>  secondTime = newTime);
  }
}