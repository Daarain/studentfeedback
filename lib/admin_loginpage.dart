import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:studentfeedback/AppColors.dart';



class adminlogin extends StatefulWidget {
  const adminlogin({super.key});

  @override
  State<adminlogin> createState() => _adminloginState();
}


void toast() {
  Fluttertoast.showToast(
      msg: 'lOGGING IN',
      toastLength: Toast.LENGTH_SHORT,
      backgroundColor: Colors.black,
      fontSize: 16,
      textColor: Colors.white);
}
void toast2() {
  Fluttertoast.showToast(
      msg: 'Wrong Password',
      toastLength: Toast.LENGTH_SHORT,
      backgroundColor: Colors.black,
      fontSize: 16,
      textColor: Colors.white);
}
void toast3() {
  Fluttertoast.showToast(
      msg: 'Wrong Username',
      toastLength: Toast.LENGTH_SHORT,
      backgroundColor: Colors.black,
      fontSize: 16,
      textColor: Colors.white);
}

class _adminloginState extends State<adminlogin> {


  TextEditingController Username = TextEditingController();
  TextEditingController Password = TextEditingController();


  @override
  Widget build(BuildContext context) {


    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text("Admin Log-In",style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.03),),
          centerTitle: true,

        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.06,right:  MediaQuery.of(context).size.width*0.06),
            child: Column(
              children: [
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.04,
                // ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,

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
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.17,
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    'Government Polytechnic ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: MediaQuery.of(context).size.height * 0.028),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.5  ,
                  child: Text(
                    'Mumbai',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: MediaQuery.of(context).size.height * 0.028),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.rectanglebox,
                      border: Border.all(width: 2, color: Colors.blue)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
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


                      SizedBox(height: MediaQuery.of(context).size.height * 0.03),


                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField(
                           controller: Username,
                          decoration: const InputDecoration(
                              hintText: 'Enter in uppercase',
                              labelText: 'Username ',
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
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField(
                           controller: Password,

                          decoration: const InputDecoration(
                              hintText: 'Enter in Upper Case',
                              labelText: 'Password',
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
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: ElevatedButton(
                          onPressed: (){
                          loginUse1();
                          },
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
                ),SizedBox(height: MediaQuery.of(context).size.height*0.02,)
              ],
            ),
          ),
        ));
  }
  Future<void> loginUse1() async {
    try {
      String? enteredUsername = Username.text;
      String? enteredPassword = Password.text;

      DatabaseReference databaseReference = FirebaseDatabase.instance
          .ref()
          .child('admin');


      DatabaseEvent userSnapshot =
      await databaseReference.child(enteredUsername).once();


    print(enteredUsername);
    print("${userSnapshot.snapshot.value}");
      if (userSnapshot.snapshot.value != null) {
        print('method working ');
        Map<String, dynamic> userData = Map<String, dynamic>.from(userSnapshot.snapshot.value as Map);
        String storedPassword = userData['password'];
        String storedUsername = userData['user'];
        print(storedPassword);

        if (enteredPassword == storedPassword) {
          // Password matches, perform the necessary actions (e.g., navigate to the next screen).
          toast();
          Navigator.pushReplacementNamed(context, 'adminsubjectaccess',);
        } else {
          // Incorrect password. Display an error message or perform appropriate handling.
          toast2();
          print('Wrong password');
        }
      } else {
        // User not found. Display an error message or perform appropriate handling.
        print('User not found');
         toast3();
      }
    } catch (e) {
      print('Error: $e');
    }
  }
  }

