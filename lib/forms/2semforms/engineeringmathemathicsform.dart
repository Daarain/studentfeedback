import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studentfeedback/AppColors.dart';
import 'package:studentfeedback/dataprovider.dart';

class engineeringmathemathicsform extends StatefulWidget {
  const engineeringmathemathicsform({super.key});

  @override
  State<engineeringmathemathicsform> createState() => _engineeringmathemathicsform();
}

//THIS LIST IS USED FOR MANAGING THE OPTIONS SELECTED IN THE RADIO BUTTONS
List options = ["1", "2", "3"];

//These variable store the selected values in the radio buttons
//M=Major q=question
//therefore M1Q1= major question1 , question 1
var M1Q1_options = options[0];
var M1Q2_options = options[0];
var M1Q3_options = options[0];
var M1Q4_options = options[0];
var M1Q5_options = options[0];
var M2Q1_options = options[0];
var M2Q2_options = options[0];
var M2Q3_options = options[0];
var M2Q4_options = options[0];
var M2Q5_options = options[0];
var M2Q6_options = options[0];
var M3Q1_options = options[0];
var M3Q2_options = options[0];

//controolers for text based data

TextEditingController c1 = new TextEditingController();
TextEditingController c2 = new TextEditingController();
TextEditingController c3 = new TextEditingController();
TextEditingController c4 = new TextEditingController();
TextEditingController c5 = new TextEditingController();
TextEditingController c6 = new TextEditingController();

class _engineeringmathemathicsform extends State<engineeringmathemathicsform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text("Engineering Mathemathics",
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.03,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
          child: Column(
            children: [
              Container(
                //  color: Colors.black,
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        // color: Colors.yellow,
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.height * 0.01),
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: Text(
                          "Faculty related response :- ",
                          style: TextStyle(
                              fontSize:
                              MediaQuery.of(context).size.width * 0.06,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.27,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.009,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                height:
                                MediaQuery.of(context).size.height * 0.03,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  'Q1 Coverage of Course Curriculum',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize:
                                      MediaQuery.of(context).size.height *
                                          0.018),
                                ),
                              ),
                              RadioListTile(
                                  title: Text("Good"),
                                  value: options[0],
                                  groupValue: M1Q1_options,
                                  onChanged: (value) {
                                    setState(() {
                                      M1Q1_options = value;
                                    });
                                  }),
                              RadioListTile(
                                  title: Text("Average"),
                                  value: options[1],
                                  groupValue: M1Q1_options,
                                  onChanged: (value) {
                                    setState(() {
                                      M1Q1_options = value;
                                    });
                                  }),
                              RadioListTile(
                                  title: Text("Below Average"),
                                  value: options[2],
                                  groupValue: M1Q1_options,
                                  onChanged: (value) {
                                    setState(() {
                                      M1Q1_options = value;
                                    });
                                  }),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.27,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.009,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.height * 0.01),
                                width: MediaQuery.of(context).size.width * 0.85,
                                height:
                                MediaQuery.of(context).size.height * 0.04,
                                decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  'Q2 Competence and commitment of faculty ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize:
                                      MediaQuery.of(context).size.height *
                                          0.018),
                                ),
                              ),
                              RadioListTile(
                                  title: Text("Good"),
                                  value: options[0],
                                  groupValue: M1Q2_options,
                                  onChanged: (value) {
                                    setState(() {
                                      M1Q2_options = value;
                                    });
                                  }),
                              RadioListTile(
                                  title: Text("Average"),
                                  value: options[1],
                                  groupValue: M1Q2_options,
                                  onChanged: (value) {
                                    setState(() {
                                      M1Q2_options = value;
                                    });
                                  }),
                              RadioListTile(
                                  title: Text("Below Average"),
                                  value: options[2],
                                  groupValue: M1Q2_options,
                                  onChanged: (value) {
                                    setState(() {
                                      M1Q2_options = value;
                                    });
                                  }),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.27,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.009,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.height * 0.01),
                                width: MediaQuery.of(context).size.width * 0.85,
                                decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  'Q3 Communication of faculty (oral/written)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize:
                                      MediaQuery.of(context).size.height *
                                          0.018),
                                ),
                              ),
                              RadioListTile(
                                  title: Text("Good"),
                                  value: options[0],
                                  groupValue: M1Q3_options,
                                  onChanged: (value) {
                                    setState(() {
                                      M1Q3_options = value;
                                    });
                                  }),
                              RadioListTile(
                                  title: Text("Average"),
                                  value: options[1],
                                  groupValue: M1Q3_options,
                                  onChanged: (value) {
                                    setState(() {
                                      M1Q3_options = value;
                                    });
                                  }),
                              RadioListTile(
                                  title: Text("Below Average"),
                                  value: options[2],
                                  groupValue: M1Q3_options,
                                  onChanged: (value) {
                                    setState(() {
                                      M1Q3_options = value;
                                    });
                                  }),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.27,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.009,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.height * 0.01),
                                width: MediaQuery.of(context).size.width * 0.85,
                                decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  'Q4 Pace of the content covered by the faculty',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize:
                                      MediaQuery.of(context).size.height *
                                          0.018),
                                ),
                              ),
                              RadioListTile(
                                  title: Text("Good"),
                                  value: options[0],
                                  groupValue: M1Q4_options,
                                  onChanged: (value) {
                                    setState(() {
                                      M1Q4_options = value;
                                    });
                                  }),
                              RadioListTile(
                                  title: Text("Average"),
                                  value: options[1],
                                  groupValue: M1Q4_options,
                                  onChanged: (value) {
                                    setState(() {
                                      M1Q4_options = value;
                                    });
                                  }),
                              RadioListTile(
                                  title: Text("Below Average"),
                                  value: options[2],
                                  groupValue: M1Q4_options,
                                  onChanged: (value) {
                                    setState(() {
                                      M1Q4_options = value;
                                    });
                                  }),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.009,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.height * 0.01),
                                decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  '  Q5 Relevance of the Content of curriculum',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize:
                                      MediaQuery.of(context).size.height *
                                          0.02),
                                ),
                              ),
                              RadioListTile(
                                  title: Text("Good"),
                                  value: options[0],
                                  groupValue: M1Q5_options,
                                  onChanged: (value) {
                                    setState(() {
                                      M1Q5_options = value;
                                    });
                                  }),
                              RadioListTile(
                                  title: Text("Average"),
                                  value: options[1],
                                  groupValue: M1Q5_options,
                                  onChanged: (value) {
                                    setState(() {
                                      M1Q5_options = value;
                                    });
                                  }),
                              RadioListTile(
                                  title: Text("Below Average"),
                                  value: options[2],
                                  groupValue: M1Q5_options,
                                  onChanged: (value) {
                                    setState(() {
                                      M1Q5_options = value;
                                    });
                                  }),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                ]),
              ),
              Container(
                // color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Container(
                      // color: Colors.yellow,
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.height * 0.01),
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: Text(
                        "Course Outcomes related :- ",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.06,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.009,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02,
                                    ),
                                    Text(
                                      "CO1:  ",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.02),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      alignment: Alignment.center,
                                      child: TextField(
                                        controller: c1,
                                        //   obscureText: true,
                                        decoration: const InputDecoration(
                                            hintText: 'Response',
                                            fillColor: Colors.white,
                                            filled: true,
                                            labelStyle:
                                            TextStyle(color: Colors.black),
                                            floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                vertical: 10,
                                                horizontal: 16),
                                            border: OutlineInputBorder(),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.blueAccent,
                                                  width: 2,
                                                )),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.deepPurple,
                                                    width: 2))),
                                      ),
                                    ),
                                  ],
                                ),
                                RadioListTile(
                                    title: Text("Good"),
                                    value: options[0],
                                    groupValue: M2Q1_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q1_options = value;
                                      });
                                    }),
                                RadioListTile(
                                    title: Text("Average"),
                                    value: options[1],
                                    groupValue: M2Q1_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q1_options = value;
                                      });
                                    }),
                                RadioListTile(
                                    title: Text("Below Average"),
                                    value: options[2],
                                    groupValue: M2Q1_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q1_options = value;
                                      });
                                    }),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.009,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02,
                                    ),
                                    Text(
                                      "CO2:  ",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.02),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      alignment: Alignment.center,
                                      child: TextField(
                                        controller: c2,
                                        //   obscureText: true,
                                        decoration: const InputDecoration(
                                            hintText: 'Response',
                                            fillColor: Colors.white,
                                            filled: true,
                                            labelStyle:
                                            TextStyle(color: Colors.black),
                                            floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                vertical: 10,
                                                horizontal: 16),
                                            border: OutlineInputBorder(),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.blueAccent,
                                                  width: 2,
                                                )),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.deepPurple,
                                                    width: 2))),
                                      ),
                                    ),
                                  ],
                                ),
                                RadioListTile(
                                    title: Text("Good"),
                                    value: options[0],
                                    groupValue: M2Q2_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q2_options = value;
                                      });
                                    }),
                                RadioListTile(
                                    title: Text("Average"),
                                    value: options[1],
                                    groupValue: M2Q2_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q2_options = value;
                                      });
                                    }),
                                RadioListTile(
                                    title: Text("Below Average"),
                                    value: options[2],
                                    groupValue: M2Q2_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q2_options = value;
                                      });
                                    }),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.009,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02,
                                    ),
                                    Text(
                                      "CO3:  ",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.02),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      alignment: Alignment.center,
                                      child: TextField(
                                        controller: c3,
                                        //   obscureText: true,
                                        decoration: const InputDecoration(
                                            hintText: 'Response',
                                            fillColor: Colors.white,
                                            filled: true,
                                            labelStyle:
                                            TextStyle(color: Colors.black),
                                            floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                vertical: 10,
                                                horizontal: 16),
                                            border: OutlineInputBorder(),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.blueAccent,
                                                  width: 2,
                                                )),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.deepPurple,
                                                    width: 2))),
                                      ),
                                    ),
                                  ],
                                ),
                                RadioListTile(
                                    title: Text("Good"),
                                    value: options[0],
                                    groupValue: M2Q3_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q3_options = value;
                                      });
                                    }),
                                RadioListTile(
                                    title: Text("Average"),
                                    value: options[1],
                                    groupValue: M2Q3_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q3_options = value;
                                      });
                                    }),
                                RadioListTile(
                                    title: Text("Below Average"),
                                    value: options[2],
                                    groupValue: M2Q3_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q3_options = value;
                                      });
                                    }),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.009,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02,
                                    ),
                                    Text(
                                      "CO4:  ",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.02),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      alignment: Alignment.center,
                                      child: TextField(
                                        controller: c4,
                                        //   obscureText: true,
                                        decoration: const InputDecoration(
                                            hintText: 'Response',
                                            fillColor: Colors.white,
                                            filled: true,
                                            labelStyle:
                                            TextStyle(color: Colors.black),
                                            floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                vertical: 10,
                                                horizontal: 16),
                                            border: OutlineInputBorder(),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.blueAccent,
                                                  width: 2,
                                                )),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.deepPurple,
                                                    width: 2))),
                                      ),
                                    ),
                                  ],
                                ),
                                RadioListTile(
                                    title: Text("Good"),
                                    value: options[0],
                                    groupValue: M2Q4_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q4_options = value;
                                      });
                                    }),
                                RadioListTile(
                                    title: Text("Average"),
                                    value: options[1],
                                    groupValue: M2Q4_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q4_options = value;
                                      });
                                    }),
                                RadioListTile(
                                    title: Text("Below Average"),
                                    value: options[2],
                                    groupValue: M2Q4_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q4_options = value;
                                      });
                                    }),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.009,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02,
                                    ),
                                    Text(
                                      "CO5:  ",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.02),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      alignment: Alignment.center,
                                      child: TextField(
                                        controller: c5,
                                        //   obscureText: true,
                                        decoration: const InputDecoration(
                                            hintText: 'Response',
                                            fillColor: Colors.white,
                                            filled: true,
                                            labelStyle:
                                            TextStyle(color: Colors.black),
                                            floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                vertical: 10,
                                                horizontal: 16),
                                            border: OutlineInputBorder(),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.blueAccent,
                                                  width: 2,
                                                )),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.deepPurple,
                                                    width: 2))),
                                      ),
                                    ),
                                  ],
                                ),
                                RadioListTile(
                                    title: Text("Good"),
                                    value: options[0],
                                    groupValue: M2Q5_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q5_options = value;
                                      });
                                    }),
                                RadioListTile(
                                    title: Text("Average"),
                                    value: options[1],
                                    groupValue: M2Q5_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q5_options = value;
                                      });
                                    }),
                                RadioListTile(
                                    title: Text("Below Average"),
                                    value: options[2],
                                    groupValue: M2Q5_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q5_options = value;
                                      });
                                    }),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.009,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02,
                                    ),
                                    Text(
                                      "CO6:  ",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.02),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      alignment: Alignment.center,
                                      child: TextField(
                                        controller: c6,
                                        //   obscureText: true,
                                        decoration: const InputDecoration(
                                            hintText: 'Response',
                                            fillColor: Colors.white,
                                            filled: true,
                                            labelStyle:
                                            TextStyle(color: Colors.black),
                                            floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                vertical: 10,
                                                horizontal: 16),
                                            border: OutlineInputBorder(),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.blueAccent,
                                                  width: 2,
                                                )),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.deepPurple,
                                                    width: 2))),
                                      ),
                                    ),
                                  ],
                                ),
                                RadioListTile(
                                    title: Text("Good"),
                                    value: options[0],
                                    groupValue: M2Q6_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q6_options = value;
                                      });
                                    }),
                                RadioListTile(
                                    title: Text("Average"),
                                    value: options[1],
                                    groupValue: M2Q6_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q6_options = value;
                                      });
                                    }),
                                RadioListTile(
                                    title: Text("Below Average"),
                                    value: options[2],
                                    groupValue: M2Q6_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M2Q6_options = value;
                                      });
                                    }),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Row(
                      children: [
                        Container(
                          // color: Colors.yellow,
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height * 0.01),
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Text(
                            "Facilities in the department:-",
                            style: TextStyle(
                                fontSize:
                                MediaQuery.of(context).size.width * 0.06,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.002,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.27,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.009,
                                ),
                                Container(
                                  width:
                                  MediaQuery.of(context).size.width * 0.8,
                                  height:
                                  MediaQuery.of(context).size.height * 0.04,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlueAccent,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    'Q1 Lab/infrastructure facility for the course',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.018),
                                  ),
                                ),
                                RadioListTile(
                                    title: Text("Good"),
                                    value: options[0],
                                    groupValue: M3Q1_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M3Q1_options = value;
                                      });
                                    }),
                                RadioListTile(
                                    title: Text("Average"),
                                    value: options[1],
                                    groupValue: M3Q1_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M3Q1_options = value;
                                      });
                                    }),
                                RadioListTile(
                                    title: Text("Below Average"),
                                    value: options[2],
                                    groupValue: M3Q1_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M3Q1_options = value;
                                      });
                                    }),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.27,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.009,
                                ),
                                Container(
                                  width:
                                  MediaQuery.of(context).size.width * 0.85,
                                  height:
                                  MediaQuery.of(context).size.height * 0.04,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlueAccent,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    'Q2 Availability of the reference books in library',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.018),
                                  ),
                                ),
                                RadioListTile(
                                    title: Text("Good"),
                                    value: options[0],
                                    groupValue: M3Q2_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M3Q2_options = value;
                                      });
                                    }),
                                RadioListTile(
                                    title: Text("Average"),
                                    value: options[1],
                                    groupValue: M3Q2_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M3Q2_options = value;
                                      });
                                    }),
                                RadioListTile(
                                    title: Text("Below Average"),
                                    value: options[2],
                                    groupValue: M3Q2_options,
                                    onChanged: (value) {
                                      setState(() {
                                        M3Q2_options = value;
                                      });
                                    }),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: ElevatedButton(
                    onPressed: () {
                      writeCRtodb();
                      writeFACtodb();
                      writeFRtodb();
                    },
                    child: Text("Submit Greivance"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.darkblue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void writeCRtodb() {
    //local variables
    final dataprovider dp1 = Provider.of<dataprovider>(context, listen: false);
    String C1 = c1.text;
    String C2 = c2.text;
    String C3 = c3.text;
    String C4 = c4.text;
    String C5 = c5.text;
    String C6 = c6.text;
    String username1 = dp1.Username1;
    String shift = dp1.Shift;

    try {
      //reference to the database
      DatabaseReference dbref = FirebaseDatabase.instance
          .ref()
          .child('student')
          .child('year')
          .child('FY')
          .child(shift)
          .child(username1)
          .child('greviances')
          .child('grevianceofsem2')
          .child('engineeringmathemathics')
          .child('courseoutcomesrelated')
          .child('cranswer1');

      DatabaseReference dbref2 = FirebaseDatabase.instance
          .ref()
          .child('student')
          .child('year')
          .child('FY')
          .child(shift)
          .child(username1)
          .child('greviances')
          .child('grevianceofsem2')
          .child('engineeringmathemathics')
          .child('courseoutcomesrelated')
          .child('cranswer2');
      DatabaseReference dbref3 = FirebaseDatabase.instance
          .ref()
          .child('student')
          .child('year')
          .child('FY')
          .child(shift)
          .child(username1)
          .child('greviances')
          .child('grevianceofsem2')
          .child('engineeringmathemathics')
          .child('courseoutcomesrelated')
          .child('cranswer3');
      DatabaseReference dbref4 = FirebaseDatabase.instance
          .ref()
          .child('student')
          .child('year')
          .child('FY')
          .child(shift)
          .child(username1)
          .child('greviances')
          .child('grevianceofsem2')
          .child('engineeringmathemathics')
          .child('courseoutcomesrelated')
          .child('cranswer4');
      DatabaseReference dbref5 = FirebaseDatabase.instance
          .ref()
          .child('student')
          .child('year')
          .child('FY')
          .child(shift)
          .child(username1)
          .child('greviances')
          .child('grevianceofsem2')
          .child('engineeringmathemathics')
          .child('courseoutcomesrelated')
          .child('cranswer5');
      DatabaseReference dbref6 = FirebaseDatabase.instance
          .ref()
          .child('student')
          .child('year')
          .child('FY')
          .child(shift)
          .child(username1)
          .child('greviances')
          .child('grevianceofsem2')
          .child('engineeringmathemathics')
          .child('courseoutcomesrelated')
          .child('cranswer6');

      //Maps for matching the variable or nodes in the database to the variables used in the frontend code
      Map<String, dynamic> crdata = {
        "panswer1": M2Q1_options,
        "stranswer1": C1,
      };
      Map<String, dynamic> crdata2 = {
        "panswer2": M2Q2_options,
        "stranswer2": C2,
      };
      Map<String, dynamic> crdata3 = {
        "panswer3": M2Q3_options,
        "stranswer3": C3,
      };
      Map<String, dynamic> crdata4 = {
        "panswer4": M2Q4_options,
        "stranswer4": C4,
      };
      Map<String, dynamic> crdata5 = {
        "panswer5": M2Q5_options,
        "stranswer5": C5,
      };

      Map<String, dynamic> crdata6 = {
        "panswer6": M2Q6_options,
        "stranswer6": C6,
      };
      dbref.update(crdata).then((_) {
        print("data added successfully");
      }).catchError((error) {
        print("$error");
      });
      dbref2.update(crdata2).then((_) {
        print("data added successfully");
      }).catchError((error) {
        print("$error");
      });
      dbref3.update(crdata3).then((_) {
        print("data added successfully");
      }).catchError((error) {
        print("$error");
      });
      dbref4.update(crdata4).then((_) {
        print("data added successfully");
      }).catchError((error) {
        print("$error");
      });
      dbref5.update(crdata5).then((_) {
        print("data added successfully");
      }).catchError((error) {
        print("$error");
      });
      dbref6.update(crdata6).then((_) {
        print("data added successfully");
      }).catchError((error) {
        print("$error");
      });
      print("method working");
    } catch (e) {
      print("$e");
    }
  }

  void writeFACtodb() {
    final dataprovider dp1 = Provider.of<dataprovider>(context, listen: false);
    String username1 = dp1.Username1;
    String shift = dp1.Shift;

    try {
      DatabaseReference dbref = FirebaseDatabase.instance
          .ref()
          .child('student')
          .child('year')
          .child('FY')
          .child(shift)
          .child(username1)
          .child('greviances')
          .child('grevianceofsem2')
          .child('engineeringmathemathics')
          .child('facilityrelated');

      Map<String, dynamic> facdata = {
        "facanswer1": M3Q1_options,
        "facanswer2": M3Q2_options
      };

      dbref.update(facdata).then((_) {
        print("data added successfully");
      }).catchError((error) {
        print("$error");
      });
    } catch (e) {
      print('$e');
    }
  }

  void writeFRtodb() {


    final dataprovider dp1 = Provider.of<dataprovider>(context, listen: false);
    String username1 = dp1.Username1;
    String shift = dp1.Shift;

    try {
      DatabaseReference dbref = FirebaseDatabase.instance
          .ref()
          .child('student')
          .child('year')
          .child('FY')
          .child(shift)
          .child(username1)
          .child('greviances')
          .child('grevianceofsem2')
          .child('engineeringmathemathics')
          .child('facultyrelated');

      Map<String, dynamic> frdata = {
        "franswer1":M1Q1_options ,
        "franswer2": M1Q2_options,
        "franswer3": M1Q3_options,
        "franswer4": M1Q4_options,
        "franswer5": M1Q5_options,
      };

      dbref.update(frdata).then((_) {
        print("data added successfully");
      }).catchError((error) {
        print("$error");
      });
    } catch (e) {
      print('$e');
    }
  }
}
