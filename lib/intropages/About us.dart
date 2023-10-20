import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height:MediaQuery.of(context).size.height ,
        width:MediaQuery.of(context).size.width,
        color: Colors.blueAccent,
        child: Center(
          child: Text(
            'To be developed\n ,'
                'Be pateint\n,'
                'we are working on it '
              ,  style: TextStyle(
              fontSize: MediaQuery.of(context).size.height*0.05
          ),
          ),
        ),
      )

    );
  }
  open_greivances(){
    Navigator.pushReplacementNamed(context, 'Aboutus');
  }
}
