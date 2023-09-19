import 'package:flutter/material.dart';

import 'package:studentfeedback/About us.dart';
import 'package:studentfeedback/AppColors.dart';
import 'package:studentfeedback/Homepage.dart';
import 'package:studentfeedback/Select_Sem.dart';

class NAV_PAGE extends StatefulWidget {
  const NAV_PAGE({super.key});

  @override
  State<NAV_PAGE> createState() => _NAV_PAGEState();
}

class _NAV_PAGEState extends State<NAV_PAGE> {
  int selectedindex=0;
  void nbg(int index){
    setState(() {
      selectedindex=index;
    });}
  final List<Widget> screens=[
    Homepage(),
    Select_Sem(),
    Aboutus()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

  bottomNavigationBar:BottomNavigationBar(
      selectedItemColor: Colors.blue,
      backgroundColor: AppColors.darkblue,
      currentIndex: selectedindex,

      onTap: nbg,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded),label: "Greivances"),
        BottomNavigationBarItem(icon: Icon(Icons.info_outline),label: "About us"),

      ],
    ),
    backgroundColor: Colors.transparent,
    body: screens[selectedindex],

    );
  }
}
