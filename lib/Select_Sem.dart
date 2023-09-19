import 'package:flutter/material.dart';
import 'package:studentfeedback/select_subjects_screens/homepage_1stsem.dart';
import 'package:studentfeedback/select_subjects_screens/homepage_2ndsem.dart';
import 'package:studentfeedback/select_subjects_screens/homepage_3rdsem.dart';
import 'package:studentfeedback/select_subjects_screens/homepage_4thsem.dart';
import 'package:studentfeedback/select_subjects_screens/homepage_5thsem.dart';
import 'package:studentfeedback/select_subjects_screens/homepage_6thSem.dart';

class Select_Sem extends StatefulWidget {
  const Select_Sem({super.key});

  @override
  State<Select_Sem> createState() => _Select_SemState();
}

class _Select_SemState extends State<Select_Sem> {


  @override
  Widget build(BuildContext context) {
    final String year1 = ModalRoute.of(context)!.settings.arguments as String;


    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.white])),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Center(
              child: Image.asset(
                'assets/images/Gpmlogo1.png',
                height: MediaQuery.of(context).size.height * 0.3,
                scale: 0.5,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  // border:Border.all(width: 3,color: Colors.black),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blueAccent, Colors.black],
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Text(
                      "Select the Term",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.04,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox( height: MediaQuery.of(context).size.height * 0.05,),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            backgroundColor: Colors.black),
                        onPressed: () {
                     print(year1);
                     switch(year1){
                       case "FYFS"||"FYSS":
                         print('switch working');
                         // Navigator.pushReplacementNamed(context, 'homepage_1stsem');

                         break;

                       case "SYFS"||"SYSS":
                         print("switch working");
                         homepage_3rdsem();
                         break;


                       case "TYFS"||"TYSS":
                         homepage_5thsem();

                         break;




                     }




                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(),
                              child: Text(
                                "ODD TERM",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.03,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Icon(
                                Icons.navigate_next,
                                color: Colors.black,
                                size: MediaQuery.of(context).size.height * 0.05,
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08,)
                  ,

                  Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            backgroundColor: Colors.white),
                        onPressed: () {
                          switch(year1){
                          case "FYFS"||"FYSS":
                            homepage_2ndsem();
                            break;

                          case "SYFS"||"SYSS":
                            homepage_4thsem();
                            break;


                          case "TYFS"||"TYSS":
                            homepage_6thsem();
                            break;




                        }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(),
                              child: Text(
                                "Even Term",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.03,
                                    fontWeight: FontWeight.w500,
                                color: Colors.black),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black),
                              child: Icon(
                                Icons.navigate_next,
                                color: Colors.white ,
                                size: MediaQuery.of(context).size.height * 0.05,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
