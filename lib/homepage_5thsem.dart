import 'package:flutter/material.dart';

import 'AppColors.dart';

class homepage_5thsem extends StatefulWidget {
  homepage_5thsem({Key? key}) : super(key: key);

  @override
  State<homepage_5thsem> createState() => _homepageState();
}

class _homepageState extends State<homepage_5thsem> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          ' 5Th Sem Grievances',
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
                radius: MediaQuery.of(context).size.width*0.2,
                backgroundImage: AssetImage('assets/images/Gpmlogo1.png'),
                backgroundColor: Colors.transparent

            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.01,
            ),

            Container(
              height: MediaQuery.of(context).size.height * 0.8,
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
                                  'Environmental Studies ',
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
                                  'Software Testing',
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
                                  'Computer Security ',
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
                                  'Major Project ',
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
                                  'Network Management and Administration',
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
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Data Analytics using r',
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
                      )),    SizedBox(
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
                                  'Entrepreneurship and Startups',
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
