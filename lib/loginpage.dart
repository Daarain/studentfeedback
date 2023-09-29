import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:studentfeedback/AppColors.dart';
import 'package:studentfeedback/dataprovider.dart';



class loginpage extends StatefulWidget {
  loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController Username = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController shift = TextEditingController();
   late String year_shift;





  void choosinguserforauthprocess() {
    year_shift=year.text+shift.text;
    print(year_shift);

    switch (year_shift) {
      case "FYFS":
        loginUse1();
        break;

      case "FYSS":
        loginUse2();
        break;

      case "SYFS":
        loginUse3();
        break;

      case "SYSS":
        loginUse4();
        break;

      case "TYFS":
        loginUse5();
        break;

      case "TYSS":
        loginUse6();
        break;
    }
  }

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
        msg: 'Invalid Enrollment no or Password',
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.black,
        fontSize: 16,
        textColor: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    final dp1=Provider.of<dataprovider>(context,listen: false);
    dp1.setdata(Username.text, Password.text, shift.text, year.text);


    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.06),
            child: Column(
              children: [
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.04,
                // ),
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
                  height: MediaQuery.of(context).size.height * 0.6,
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField(
                          controller: year,
                          //   obscureText: true,
                          decoration: const InputDecoration(
                              hintText: 'Enter in uppercase',
                              labelText: 'Year ',
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
                      // Container(
                      //   height: MediaQuery.of(context).size.height * 0.02,
                      //   child: Text("Enter your year and shift"),
                      // ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField(
                          controller: shift,
                          decoration: const InputDecoration(
                              hintText: 'Enter in Uppercase',
                              labelText: 'SHIFT',
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
                       SizedBox(height: MediaQuery.of(context).size.height * 0.03),


                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField(
                          controller: Username,
                          decoration: const InputDecoration(
                              hintText: 'Enter in Upper Case',
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
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField(
                          controller: Password,
                          //   obscureText: true,
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
                            choosinguserforauthprocess();
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
                )
              ],
            ),
          ),
        ));
  }

  Future<void> loginUse1() async {
    String? year_shift=year.text+shift.text;


    print(year_shift);
    try {
      String? enteredUsername = Username.text;
      String? enteredPassword = Password.text;





      DatabaseReference databaseReference = FirebaseDatabase.instance
          .reference()
          .child('student')
          .child('year')
          .child('FY')
          .child('FS');

      DatabaseEvent userSnapshot =
          await databaseReference.child(enteredUsername).once();

      if (userSnapshot.snapshot.value != null) {
        Map<String, dynamic> userData =
            Map<String, dynamic>.from(userSnapshot.snapshot.value as Map);
        String storedPassword = userData['password'];
        print(storedPassword);
        if (enteredPassword == storedPassword) {
          // Password matches, perform the necessary actions (e.g., navigate to the next screen).
          toast();
          Navigator.pushReplacementNamed(context, 'NAVPAGE',arguments: year_shift);
        } else {
          // Incorrect password. Display an error message or perform appropriate handling.
          toast2();
          print('Wrong password');
        }
      } else {
        // User not found. Display an error message or perform appropriate handling.
        print('User not found');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> loginUse2() async {
    String? year_shift=year.text+shift.text;
    try {
      String? enteredUsername = Username.text;
      String? enteredPassword = Password.text;
      String? year1=year.text;

      DatabaseReference databaseReference = FirebaseDatabase.instance
          .reference()
          .child('student')
          .child('year')
          .child('FY')
          .child('SS');

      DatabaseEvent userSnapshot =
          await databaseReference.child(enteredUsername).once();

      if (userSnapshot.snapshot.value != null) {
        Map<String, dynamic> userData =
            Map<String, dynamic>.from(userSnapshot.snapshot.value as Map);
        String storedPassword = userData['password'];
        print(storedPassword);
        if (enteredPassword == storedPassword) {
          // Password matches, perform the necessary actions (e.g., navigate to the next screen).
          toast();
          Navigator.pushReplacementNamed(context, 'NAVPAGE', arguments: year_shift );
        } else {
          // Incorrect password. Display an error message or perform appropriate handling.
          toast2();
          print('Wrong password');
        }
      } else {
        // User not found. Display an error message or perform appropriate handling.
        print('User not found');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> loginUse3() async {

    try {
      String? enteredUsername = Username.text;
      String? enteredPassword = Password.text;
      String? year_shift=year.text+shift.text;

      DatabaseReference databaseReference = FirebaseDatabase.instance
          .reference()
          .child('student')
          .child('year')
          .child('SY')
          .child('FS');

      DatabaseEvent userSnapshot =
          await databaseReference.child(enteredUsername).once();

      if (userSnapshot.snapshot.value != null) {
        Map<String, dynamic> userData =
            Map<String, dynamic>.from(userSnapshot.snapshot.value as Map);
        String storedPassword = userData['password'];
        print(storedPassword);
        if (enteredPassword == storedPassword) {
          // Password matches, perform the necessary actions (e.g., navigate to the next screen).
          toast();
          Navigator.pushReplacementNamed(context, 'NAVPAGE',arguments: year_shift
               );
        } else {
          // Incorrect password. Display an error message or perform appropriate handling.
          toast2();
          print('Wrong password');
        }
      } else {
        // User not found. Display an error message or perform appropriate handling.
        print('User not found');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> loginUse4() async {
    String? year_shift=year.text+shift.text;
    try {
      String? enteredUsername = Username.text;
      String? enteredPassword = Password.text;


      DatabaseReference databaseReference = FirebaseDatabase.instance
          .reference()
          .child('student')
          .child('year')
          .child('SY')
          .child('SS');

      DatabaseEvent userSnapshot =
          await databaseReference.child(enteredUsername).once();

      if (userSnapshot.snapshot.value != null) {
        Map<String, dynamic> userData =
            Map<String, dynamic>.from(userSnapshot.snapshot.value as Map);
        String storedPassword = userData['password'];
        print(storedPassword);
        if (enteredPassword == storedPassword) {
          // Password matches, perform the necessary actions (e.g., navigate to the next screen).
          toast();
          Navigator.pushReplacementNamed(context, 'NAVPAGE',arguments: year_shift);
        } else {
          // Incorrect password. Display an error message or perform appropriate handling.
          toast2();
          print('Wrong password');
        }
      } else {
        // User not found. Display an error message or perform appropriate handling.
        print('User not found');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> loginUse5() async {
    String? year_shift=year.text+shift.text;
    try {
      String? enteredUsername = Username.text;
      String? enteredPassword = Password.text;

      DatabaseReference databaseReference = FirebaseDatabase.instance
          .reference()
          .child('student')
          .child('year')
          .child('TY')
          .child('FS');

      DatabaseEvent userSnapshot =
          await databaseReference.child(enteredUsername).once();

      if (userSnapshot.snapshot.value != null) {
        Map<String, dynamic> userData =
            Map<String, dynamic>.from(userSnapshot.snapshot.value as Map);
        String storedPassword = userData['password'];
        print(storedPassword);
        if (enteredPassword == storedPassword) {
          // Password matches, perform the necessary actions (e.g., navigate to the next screen).
          toast();
          Navigator.pushReplacementNamed(context, 'NAVPAGE',arguments: year_shift);
        } else {
          // Incorrect password. Display an error message or perform appropriate handling.
          toast2();
          print('Wrong password');
        }
      } else {
        // User not found. Display an error message or perform appropriate handling.
        print('User not found');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> loginUse6() async {
    String? year_shift=year.text+shift.text;
    try {
      String? enteredUsername = Username.text;
      String? enteredPassword = Password.text;



      DatabaseReference databaseReference = FirebaseDatabase.instance
          .reference()
          .child('student')
          .child('year')
          .child('TY')
          .child('SS');

      DatabaseEvent userSnapshot =
          await databaseReference.child(enteredUsername).once();

      if (userSnapshot.snapshot.value != null) {
        Map<String, dynamic> userData =
            Map<String, dynamic>.from(userSnapshot.snapshot.value as Map);
        String storedPassword = userData['password'];
        print(storedPassword);
        if (enteredPassword == storedPassword) {
          // Password matches, perform the necessary actions (e.g., navigate to the next screen).
          toast();
          Navigator.pushReplacementNamed(context, 'NAVPAGE',arguments: year_shift
               );
        } else {
          // Incorrect password. Display an error message or perform appropriate handling.
          toast2();
          print('Wrong password');
        }
      } else {
        // User not found. Display an error message or perform appropriate handling.
        print('User not found');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
