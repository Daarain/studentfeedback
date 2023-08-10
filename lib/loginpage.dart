import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:studentfeedback/homepage_2ndsem.dart';
import 'package:studentfeedback/homepage_5thsem.dart';
class loginpage extends StatefulWidget {
  loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController Username = TextEditingController();
  TextEditingController Password = TextEditingController();
  late DataSnapshot userSnapshot;
void toast(){

  Fluttertoast.showToast(msg: 'Logging in',

      toastLength: Toast.LENGTH_SHORT,
      backgroundColor: Colors.black,
      fontSize: 16,
      textColor: Colors.white

  );
}

void toast2(){

  Fluttertoast.showToast(msg: 'Wrong Username or Password',

      toastLength: Toast.LENGTH_SHORT,
      backgroundColor: Colors.black,
      fontSize: 16,
      textColor: Colors.white

  );
}



   Future<void> loginuser() async {
  //   try {
  //     String user = Username.text;
  //     String pass = Password.text;
  //     DatabaseReference databaseRef =
  //     FirebaseDatabase.instance.reference().child('student');
  //     DatabaseEvent userEvent = await databaseRef.child(user).once();
  //     Map<dynamic, dynamic>? userData = userEvent.snapshot.value as Map<dynamic, dynamic>?;
  //
  //
  //     if(userData!=null && userData .containsKey('pass')&& userData.containsKey('enrolls')){
  //       String storedPassword = userData['pass'].toString() ;
  //       String storedUsername = userData['enroll'].toString() ;
  //       if (user == storedUsername && pass == storedPassword) {
  //         print('hello');
  //         Navigator.pushNamed(context, 'home_page');
  //         // Navigator.push(context, homepage());
  //       } else {
  //         Fluttertoast.showToast(
  //           msg: 'Invalid password',
  //           toastLength: Toast.LENGTH_SHORT,
  //           backgroundColor: Colors.grey,
  //           fontSize: 16,
  //           textColor: Colors.white,
  //         );
  //       }
  //     }
  //   }
  // catch(e){
  //     print('error storing data : $e');
  //
  //
  // }
     try{
       String? user = Username.text;
       String? pass = Password.text;
       DatabaseReference databaseRef =
       FirebaseDatabase.instance.reference().child('student');

       Map<dynamic, dynamic>? userData;


       // Check if the user already exists in the database
       await databaseRef.child(user).once().then((DatabaseEvent databaseEvent) async {
         userSnapshot = databaseEvent.snapshot;
         print(userSnapshot.value.toString());
         userData = userSnapshot.value as Map?;
         String? storedPassword = userData?['password'];
         String? storedUsername = userData?['name'];
         if(user == storedUsername){
           if(pass == storedPassword){
         toast();
          Navigator.pushReplacementNamed(context,'homepage_3rdsem' );
           }
         }else if(pass != storedPassword) {
           toast2();
     print('wrong password');
         }
       });
       // await databaseRef.child(user).set({
       //   'name': user,
       //   'password': pass
       // });
       // Check if the user already exists in the database

     }catch(e){
       print('Error storing data: $e');
     }}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Student Grievances'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/Gpmlogo1.png')),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Container(
                child: Text(
                  'Welcome',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                child: Text(
                  'Login to get started  !',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  controller: Username,
                  decoration: InputDecoration(
                      hintText: 'Enrollment No',
                      labelText: 'Enrollment No',
                      labelStyle: TextStyle(color: Colors.blueAccent),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 2,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.purple, width: 2))),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  controller: Password,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.blueAccent),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 2,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.purple, width: 2))),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.06,
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.04, 0, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, 'home_page');
                        loginuser();
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'forgot_password');
                      },
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.blueGrey),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),

                ],
              )
            ],
          ),
        ));
  }
}
