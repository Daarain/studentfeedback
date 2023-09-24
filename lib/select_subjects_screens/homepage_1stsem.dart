import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:studentfeedback/AppColors.dart';


import 'package:studentfeedback/dataprovider.dart';


class homepage_1stsem extends StatefulWidget {
  const homepage_1stsem({super.key});


  @override
  State<homepage_1stsem> createState() => _homepage_1stsemState();
}

class _homepage_1stsemState extends State<homepage_1stsem> {


  @override
  Widget build(BuildContext context) {

    final dataprovider1=Provider.of<dataprovider>(context);
    final username=dataprovider1.Username1;
    final password=dataprovider1.Password1;
    final shift=dataprovider1.Shift;
    final year=dataprovider1.Year;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          ' 1st Sem Grievances',
          style: TextStyle(color: AppColors.text,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        centerTitle: true,

      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
                radius: MediaQuery.of(context).size.width*0.25,
                backgroundImage: AssetImage('assets/images/Gpmlogo1.png'),
                backgroundColor: Colors.transparent

            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.017,
            ),

            Container(
              height: MediaQuery.of(context).size.height * 0.70,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  Row(children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.23,
                    ),
                    Container(

                      child: Text(
                        'Select subject',
                        style: TextStyle(
                            color: AppColors.headingtext3,
                            fontWeight: FontWeight.w900,
                            fontSize: 34),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.23,
                    ),
                  ]),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'Form1');
                        },
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Applied Physics',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: AppColors.text),
                                )),
                            Container(
                              child: Icon(
                                Icons.add,
                                color: AppColors.arrowcolor,
                              ),
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'Form1');
                        },
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Basic Mathemathics ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: AppColors.text),
                                )),
                            Container(
                              child: Icon(
                                Icons.add,
                                color: AppColors.arrowcolor,
                              ),
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "Form1");
                        },
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Basics of Electrical and Electronic Engineering',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: AppColors.text),
                                )),
                            Container(
                              child: Icon(
                                Icons.add,
                                color: AppColors.arrowcolor,
                              ),
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "Form1");
                        },
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  ' Logic  Development  using  Programming   in C',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: AppColors.text),
                                )),
                            Container(
                              child: Icon(
                                Icons.add,
                                color: AppColors.arrowcolor,
                              ),
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () { Navigator.pushNamed(context, "Form1");},
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Web Page Design',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color:AppColors.text),
                                )),
                            Container(
                              child: Icon(
                                Icons.add,
                                color: AppColors.arrowcolor,
                              ),
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () { Navigator.pushNamed(context, "Form1");},
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  ' Multimedia and Video Creation',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color:AppColors.text),
                                )),
                            Container(
                              child: Icon(
                                Icons.add,
                                color: AppColors.arrowcolor,
                              ),
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
