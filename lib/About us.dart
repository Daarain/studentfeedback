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
      body: Text("Hello world"),

    );
  }
  open_greivances(){
    Navigator.pushReplacementNamed(context, 'Aboutus');
  }
}
