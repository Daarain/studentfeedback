import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:studentfeedback/firebase_options.dart';
import 'package:studentfeedback/forgotpassword.dart';
import 'package:studentfeedback/homepage_1stsem.dart';
import 'package:studentfeedback/homepage_2ndsem.dart';
import 'package:studentfeedback/homepage_3rdsem.dart';
import 'package:studentfeedback/homepage_4thsem.dart';
import 'package:studentfeedback/homepage_5thsem.dart';
import 'package:studentfeedback/homepage_6thSem.dart';
import 'package:studentfeedback/loginpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,


  );
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'login_page',
        routes: {
          'login_page': (context) => loginpage(),
          'forgot_password': (context) => forgotpassword(),
          'homepage_5thsem': (context) => homepage_5thsem(),
          'homepage_6thsem': (context) => homepage_6thsem(),
          'homepage_3rdsem': (context) => homepage_3rdsem(),
          'homepage_2ndsem': (context) => homepage_2ndsem(),
          'homepage_4thsem': (context) => homepage_4thsem(),
          'homepage_1stsem': (context) => homepage_1stsem(),
        });
  }
}
// class screen_chooser extends StatefulWidget {
//   const screen_chooser({super.key});
//
//   @override
//   State<screen_chooser> createState() => _screen_chooserState();
// }
//
// class _screen_chooserState extends State<screen_chooser> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
// body: ,
//     );
//   }
// }
