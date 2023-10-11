import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:studentfeedback/AppColors.dart';

import 'package:studentfeedback/dataprovider.dart';
import 'package:studentfeedback/intropages/About%20us.dart';
import 'package:studentfeedback/intropages/Homepage.dart';
import 'package:studentfeedback/intropages/Select_Sem.dart';

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
    final String year_shift= ModalRoute.of(context)!.settings.arguments as String;
    final dataprovider1=Provider.of<dataprovider>(context);
    final username=dataprovider1.Username1;
    final password=dataprovider1.Password1;
    final shift=dataprovider1.Shift;
    final year=dataprovider1.Year;
    return Scaffold(

  bottomNavigationBar:BottomNavigationBar(

      selectedItemColor: Colors.black,
      backgroundColor: Colors.blueAccent,
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
