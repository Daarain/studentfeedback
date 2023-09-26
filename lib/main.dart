


import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:studentfeedback/dataprovider.dart';
import 'package:studentfeedback/firebase_options.dart';
import 'package:studentfeedback/forms/appliedphysicsform.dart';
import 'package:studentfeedback/forms/basicmathemathicsform.dart';


import 'package:studentfeedback/intropages/About%20us.dart';
import 'package:studentfeedback/intropages/NAV_PAGE.dart';
import 'package:studentfeedback/intropages/Select_Sem.dart';
import 'package:studentfeedback/loginpage.dart';
import 'package:studentfeedback/select_subjects_screens/homepage_1stsem.dart';
import 'package:studentfeedback/select_subjects_screens/homepage_2ndsem.dart';
import 'package:studentfeedback/select_subjects_screens/homepage_3rdsem.dart';
import 'package:studentfeedback/select_subjects_screens/homepage_4thsem.dart';
import 'package:studentfeedback/select_subjects_screens/homepage_5thsem.dart';
import 'package:studentfeedback/select_subjects_screens/homepage_6thSem.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,


  );
  runApp(
ChangeNotifierProvider(create: (context)=>dataprovider(),
child: Myapp(),),

    
  );
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
           'Select_Sem':(context)=>Select_Sem(),
          'NAVPAGE':(context)=> NAV_PAGE(),
          'Aboutus':(context)=>Aboutus(),

          'homepage_5thsem': (context) => homepage_5thsem(),
          'homepage_6thsem': (context) => homepage_6thsem(),
          'homepage_3rdsem': (context) => homepage_3rdsem(),
          'homepage_2ndsem': (context) => homepage_2ndsem(),
          'homepage_4thsem': (context) => homepage_4thsem(),
          'homepage_1stsem': (context) => homepage_1stsem(),
          'appliedphysicsform' :(context) => appliedphysicsform(),
          'basicmathemathicsform':(context)=>basicmathemathicsform()
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

