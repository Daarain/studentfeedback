import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studentfeedback/AppColors.dart';
import 'package:studentfeedback/dataprovider.dart';

class homepage_3rdsem extends StatefulWidget {
  const homepage_3rdsem({super.key});

  @override
  State<homepage_3rdsem> createState() => _homepage_3rdsemState();
}

class _homepage_3rdsemState extends State<homepage_3rdsem> {
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
          ' 3rd Sem Grievances',
          style: TextStyle(
              color: AppColors.text, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.3,
                backgroundImage: AssetImage('assets/images/Gpmlogo1.png'),
                backgroundColor: Colors.transparent),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.031,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
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
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              'Microprocessors',
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
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              'Programming in Java',
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
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              'Functional Programming in Python',
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
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              'Computer Networks',
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
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              'Database Management Systems',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
