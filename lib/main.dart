import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studentfeedback/admin_loginpage.dart';
import 'package:studentfeedback/adminsubjectaccess.dart';

import 'package:studentfeedback/dataprovider.dart';
import 'package:studentfeedback/firebase_options.dart';
import 'package:studentfeedback/forms/1semforms/appliedphysicsform.dart';
import 'package:studentfeedback/forms/1semforms/basicmathemathicsform.dart';
import 'package:studentfeedback/forms/1semforms/beeeform.dart';
import 'package:studentfeedback/forms/1semforms/cform.dart';
import 'package:studentfeedback/forms/1semforms/mvcform.dart';
import 'package:studentfeedback/forms/1semforms/wpdform.dart';
import 'package:studentfeedback/forms/2semforms/chmform.dart';
import 'package:studentfeedback/forms/2semforms/cmsform.dart';
import 'package:studentfeedback/forms/2semforms/cppform.dart';
import 'package:studentfeedback/forms/2semforms/ds.dart';
import 'package:studentfeedback/forms/2semforms/dteform.dart';
import 'package:studentfeedback/forms/2semforms/engineeringmathemathicsform.dart';
import 'package:studentfeedback/forms/3semforms/cnforms.dart';
import 'package:studentfeedback/forms/3semforms/dbmsform.dart';
import 'package:studentfeedback/forms/3semforms/javaform.dart';
import 'package:studentfeedback/forms/3semforms/mpform.dart';
import 'package:studentfeedback/forms/3semforms/pythonform.dart';
import 'package:studentfeedback/forms/4semforms/ajpform.dart';
import 'package:studentfeedback/forms/4semforms/awdform.dart';
import 'package:studentfeedback/forms/4semforms/madform.dart';
import 'package:studentfeedback/forms/4semforms/ngdform.dart';
import 'package:studentfeedback/forms/4semforms/osform.dart';
import 'package:studentfeedback/forms/4semforms/seform.dart';
import 'package:studentfeedback/forms/5semforms/csform.dart';
import 'package:studentfeedback/forms/5semforms/darform.dart';
import 'package:studentfeedback/forms/5semforms/evsform.dart';
import 'package:studentfeedback/forms/5semforms/nmaform.dart';
import 'package:studentfeedback/forms/5semforms/stform.dart';
import 'package:studentfeedback/greviance_activity/applied_physics_greivance.dart';

import 'package:studentfeedback/intropages/About%20us.dart';
import 'package:studentfeedback/intropages/NAV_PAGE.dart';
import 'package:studentfeedback/intropages/Select_Sem.dart';
import 'package:studentfeedback/loginpage.dart';
import 'package:studentfeedback/primarypage.dart';
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
    ChangeNotifierProvider(
      create: (context) => dataprovider(),
      child: Myapp(),
    ),
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

        initialRoute: 'primarypage',
        routes: {
          //auth page
          'login_page': (context) => loginpage(),
          'primarypage':(context)=>primarypage(),
          'adminlogin':(context)=>adminlogin(),

          //nav pages
          'Select_Sem': (context) => Select_Sem(),
          'NAVPAGE': (context) => NAV_PAGE(),
          'Aboutus': (context) => Aboutus(),
          //homepages which are used for navigating through form pages
          'homepage_5thsem': (context) => homepage_5thsem(),
          'homepage_6thsem': (context) => homepage_6thsem(),
          'homepage_3rdsem': (context) => homepage_3rdsem(),
          'homepage_2ndsem': (context) => homepage_2ndsem(),
          'homepage_4thsem': (context) => homepage_4thsem(),
          'homepage_1stsem': (context) => homepage_1stsem(),

          //1st sem forms for filling the feedback
          'appliedphysicsform': (context) => appliedphysicsform(),
          'basicmathemathicsform': (context) => basicmathemathicsform(),
          'beeeform': (context) => beeeform(),
          'cform': (context) => cform(),
          'wpdform': (context) => wpdform(),
          'mvcform': (context) => mvcform(),

          //2nd sem forms for filling the feedbacks
          'cmsform': (context) => cmsform(),
          'chmform': (context) => chmform(),
          'dsform': (context) => dsform(),
          'dteform': (context) => dteform(),
          'engineeringmathemathicsform': (context) =>
              engineeringmathemathicsform(),
          'cppform': (context) => cppform(),

          //3rd sem forms for filling the feedback
          'cnform': (context) => cnform(),
          'dbmsform': (context) => dbmsform(),
          'pythonform': (context) => pythonform(),
          'javaform': (context) => javaform(),
          'mpform': (context) => mpform(),

          //4th sem forms for filling the feedback
          'osform': (context) => osform(),
          'seform': (context) => seform(),
          'ajpform': (context) => ajpform(),
          'madform': (context) => madform(),
          'awdform': (context) => awdform(),
          'ngdform': (context) => ngdform(),

          //5th sem forms for filling the feedback
          'evsform': (context) => evsform(),
          'csform': (context) => csform(),
          'stform': (context) => stform(),
          'nmaform': (context) => nmaform(),
          'darform': (context) => darform(),

          //admin subject access pages
          'adminsubjectaccess':(context)=>adminsubjectaccess(),
          'apg':(context)=>apg()

        });
  }
}
