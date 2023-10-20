import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:studentfeedback/AppColors.dart';
import 'package:studentfeedback/dataprovider.dart';


class Select_Sem extends StatefulWidget {
  const Select_Sem({super.key});

  @override
  State<Select_Sem> createState() => _Select_SemState();
}

class _Select_SemState extends State<Select_Sem> {
  @override
  Widget build(BuildContext context) {
    final String year_shift= ModalRoute.of(context)!.settings.arguments as String;
    final dataprovider1=Provider.of<dataprovider>(context);
    final username=dataprovider1.Username1;
    final password=dataprovider1.Password1;
    final shift=dataprovider1.Shift;
    final year=dataprovider1.Year;


    void toast() {
      Fluttertoast.showToast(
          msg: 'There are no greivances for 6th sem ',
          toastLength: Toast.LENGTH_SHORT,
          backgroundColor: Colors.black,
          fontSize: 16,
          textColor: Colors.white);
    }




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
                    colors: [ AppColors.selectsempageroundcontainer,Colors.cyanAccent],
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2), // Shadow color
                            spreadRadius: 5, // Spread radius
                            blurRadius: 7, // Blur radius
                            offset: Offset(0, 3), // Offset (vertical, horizontal)
                          ),
                        ]
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            backgroundColor: Colors.cyan.shade200),
                        onPressed: () {
                          switch (year_shift) {
                            case "FYFS" || "FYSS":
                              print('switch working');
                              Navigator.pushNamed(context, 'homepage_1stsem');
                              break;

                            case "SYFS" || "SYSS":
                              print("switch working");

                              Navigator.pushNamed(context, 'homepage_3rdsem');
                              break;

                            case "TYFS" || "TYSS":
                              Navigator.pushNamed(context, 'homepage_5thsem');
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
                                    fontWeight: FontWeight.w500),
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // border: Border.all(color: Colors.black, width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Shadow color
                          spreadRadius: 5, // Spread radius
                          blurRadius: 7, // Blur radius
                          offset: Offset(0, 3), // Offset (vertical, horizontal)
                        ),
                      ]
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            backgroundColor: Colors.lightBlue.shade300),
                        onPressed: () {
                          switch (year_shift) {
                            case "FYFS" || "FYSS":
                              Navigator.pushNamed(context, 'homepage_2ndsem');
                              break;

                            case "SYFS" || "SYSS":
                              Navigator.pushNamed(context, 'homepage_4thsem');
                              break;

                            case "TYFS" || "TYSS":
                          toast();
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
                                color: Colors.white,
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
