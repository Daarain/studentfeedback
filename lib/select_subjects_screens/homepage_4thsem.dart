import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studentfeedback/AppColors.dart';
import 'package:studentfeedback/dataprovider.dart';



class homepage_4thsem extends StatefulWidget {
  const homepage_4thsem({super.key});

  @override
  State<homepage_4thsem> createState() => _homepage_4thsemState();
}

class _homepage_4thsemState extends State<homepage_4thsem> {

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
          '4th Sem Grievances',
          style: TextStyle(color: AppColors.text,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width*0.07),
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
              height: MediaQuery.of(context).size.height*0.01,
            ),

            Container(
              height: MediaQuery.of(context).size.height * 0.68,
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

                  Center(
                    child: Container(

                      child: Text(
                        'Select subject',
                        style: TextStyle(
                            color: AppColors.headingtext3,
                            fontWeight: FontWeight.w900,
                            fontSize: MediaQuery.of(context).size.height*0.05),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'osform');
                        },
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Operating System ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: MediaQuery.of(context).size.height*0.02,
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
                          Navigator.pushNamed(context, 'seform');
                        },
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Software Engineering',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: MediaQuery.of(context).size.height*0.02,
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
                          Navigator.pushNamed(context, 'ajpform');
                        },
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Advanced Programming in Java ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: MediaQuery.of(context).size.height*0.02,
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
                          Navigator.pushNamed(context, 'madform');
                        },
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Mobile Application Development ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: MediaQuery.of(context).size.height*0.02,
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
                          Navigator.pushNamed(context, 'ngdform');
                        },
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Next Generation Databases',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: MediaQuery.of(context).size.height*0.02,
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
                      )),    SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context,'awdform');
                        },
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Advanced Web Development',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: MediaQuery.of(context).size.height*0.02,
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
