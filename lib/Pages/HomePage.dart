import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Container(
            height: 170,
            decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 4,
                      color: Colors.blue,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 4,
                      color: Colors.blue,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 4,
                      color: Colors.blue,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 4,
                      color: Colors.blue,
                      style: BorderStyle.solid), //BorderSide
                )
            ),
          )
        ],
      ),
    );
  }
}
