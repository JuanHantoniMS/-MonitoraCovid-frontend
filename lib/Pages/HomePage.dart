import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../core/AppBuilders.dart';
import '../core/AppColors.dart';
import '../core/AppFunctions.dart';


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
    return Scaffold(
        body: SafeArea(child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Container(
                height: 175,
                decoration: BoxDecoration(
                    color: Colors.red
                ),
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