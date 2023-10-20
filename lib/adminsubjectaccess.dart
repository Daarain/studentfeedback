

import 'package:flutter/material.dart';

import 'AppColors.dart';

class adminsubjectaccess extends StatefulWidget {
  const adminsubjectaccess({super.key});

  @override
  State<adminsubjectaccess> createState() => _adminsubjectaccessState();
}

class _adminsubjectaccessState extends State<adminsubjectaccess> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'Student Grievance',
          style: TextStyle(color: AppColors.text,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width*0.07),
        ),
        centerTitle: true,

      ),

      body: Container(
        height: MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(

          gradient: LinearGradient(
            colors: [
              Colors.lightBlueAccent,
              Colors.white,
              Colors.lightBlueAccent
            ]
          )
          // borderRadius: BorderRadius.only(
            //     topLeft: Radius.circular(30),
            //     topRight: Radius.circular(30)),
            ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'apg');
                    },
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Applied Physics',
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
                      Navigator.pushNamed(context, 'basicmathemathicsform');
                    },
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Basic Mathemathics ',
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
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "beeeform");
                    },
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Basics of Electrical and Electronic Engineering',
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
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "cform");
                    },
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Logic Development using Programming  in C',
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
                    onPressed: () { Navigator.pushNamed(context, "wpdform");},
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Web Page Design',
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () { Navigator.pushNamed(context, "mvcform");},
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Multimedia and Video Creation',
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () { Navigator.pushNamed(context, "mvcform");},
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Communication Skills',
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () { Navigator.pushNamed(context, "mvcform");},
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Multimedia and Video Creation',
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () { Navigator.pushNamed(context, "mvcform");},
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Multimedia and Video Creation',
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () { Navigator.pushNamed(context, "mvcform");},
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Multimedia and Video Creation',
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () { Navigator.pushNamed(context, "mvcform");},
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Multimedia and Video Creation',
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () { Navigator.pushNamed(context, "mvcform");},
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Multimedia and Video Creation',
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () { Navigator.pushNamed(context, "mvcform");},
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Multimedia and Video Creation',
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () { Navigator.pushNamed(context, "mvcform");},
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Multimedia and Video Creation',
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
      ),
    );


  }
}
