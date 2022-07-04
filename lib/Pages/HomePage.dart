import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../core/AppBuilders.dart';
import '../core/AppColors.dart';
import '../core/AppFunctions.dart';
import '../core/AppImages.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CalendarFormat format = CalendarFormat.week;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  int selectedIndex = 0;
  int indexPage=0;

  String roomName = "Sala 1";
  String horarioInicial = "10:45";
  String horarioFinal = "12:30";

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
        body: SafeArea(child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Container(
                height: 0.2 * screenHeight,
                width: screenWidth,
                decoration: BoxDecoration(gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    AppColors.themeColor,
                    Color(0xff239393),
                  ],)),
                child:
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 4),
                        child:Image.asset(
                          alignment: Alignment.centerLeft,
                          height: 0.5 * screenHeight,
                          AppImages.logo,
                        ) ,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                      child: DefaultTextStyle(
                        child: Text("MONITORA COVID",),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                        )
                    ],
                  )
              ),
              Container(
                child: TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: focusedDay,
                  calendarFormat: format,
                  selectedDayPredicate: (DateTime date){
                    return isSameDay(selectedDay, date);
                  },
                  calendarStyle: CalendarStyle(
                      isTodayHighlighted: true,
                      selectedDecoration: BoxDecoration(
                          color: AppColors.themeColor,
                          shape: BoxShape.circle
                      )
                  ),
                  onDaySelected: (DateTime selectDay, DateTime focusDay){
                    setState() {
                      selectedDay = selectDay;
                      focusedDay = focusDay;
                    };
                  },
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child:  Padding(
                    padding: EdgeInsets.fromLTRB(15,20,0,0),
                    child: Text(
                      "Salas agendadas",
                      style: TextStyle(
                          fontSize: 24),
                    ),)
              ),
              Builders.HomePageRooms(context, roomName, horarioInicial, horarioFinal),


            ],
          ),
        ),
        ),
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
}