import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:studentfeedback/AppColors.dart';
import 'package:studentfeedback/homepage_2ndsem.dart';
import 'package:studentfeedback/homepage_5thsem.dart';
import 'colorfile.dart';

class loginpage extends StatefulWidget {
  loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController Username = TextEditingController();
  TextEditingController Password = TextEditingController();
  late DataSnapshot userSnapshot;
  void toast() {
    Fluttertoast.showToast(
        msg: 'Logging in',
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.black,
        fontSize: 16,
        textColor: Colors.white);
  }

  void toast2() {
    Fluttertoast.showToast(
        msg: 'Wrong Username or Password',
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.black,
        fontSize: 16,
        textColor: Colors.white);
  }

  Future<void> loginuser() async {
    try {
      String? user = Username.text;
      String? pass = Password.text;
      DatabaseReference databaseRef =
          FirebaseDatabase.instance.reference().child('student');

      Map<dynamic, dynamic>? userData;

      // Check if the user already exists in the database
      await databaseRef
          .child(user)
          .once()
          .then((DatabaseEvent databaseEvent) async {
        userSnapshot = databaseEvent.snapshot;
        print(userSnapshot.value.toString());
        userData = userSnapshot.value as Map?;
        String? storedUsername = userData?['name'];
        String? storedPassword = userData?['password'];

        if (user == storedUsername) {
          if (pass == storedPassword) {
            toast();
            Navigator.pushReplacementNamed(context, 'homepage_2ndsem');
          }
        } else if (pass != storedPassword) {
          toast2();
          print('wrong password');
        }
      });
      // await databaseRef.child(user).set({
      //   'name': user,
      //   'password': pass
      // });
      // Check if the user already exists in the database
    } catch (e) {
      print('Error storing data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color.login_page_bg_color,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                // color: Colors.blue,
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: MediaQuery.of(context).size.width * 0.4,
                  child: Image.asset(
                    'assets/images/Gpmlogo1.png',
                    scale: .9,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.17,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      'Government Polytechnic ',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.height * 0.028),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.38,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: Text(
                      'Mumbai',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.height * 0.028),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.rectanglebox,
                    border: Border.all(width: 2, color: Colors.blue)),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Container(
                      child: Text(
                        'Welcome back',
                        style: TextStyle(
                            fontFamily: 'Arvo',
                            fontSize: MediaQuery.of(context).size.height * 0.03,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: TextField(
                        controller: Username,
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: 'Enrollment No',
                            labelText: 'Enrollment no ',
                            fillColor: Colors.white,
                            filled: true,
                            labelStyle: TextStyle(color: Colors.black),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 16),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.blueAccent,
                              width: 2,
                            )),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple, width: 2))),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: TextField(
                        controller: Password,
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: 'Password',
                            labelText: 'Password ',
                            fillColor: Colors.white,
                            filled: true,
                            labelStyle: TextStyle(color: Colors.black),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 16),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.blueAccent,
                              width: 2,
                            )),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple, width: 2))),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: ElevatedButton(
                        onPressed: loginuser,
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                          ),
                        ),

                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),

                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
