

import 'package:flutter/material.dart';

class adminsubjectaccess extends StatefulWidget {
  const adminsubjectaccess({super.key});

  @override
  State<adminsubjectaccess> createState() => _adminsubjectaccessState();
}

class _adminsubjectaccessState extends State<adminsubjectaccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Student Grievances'),
        centerTitle: true,
      ),
      body: ListView(

        children: <Widget>[
          InkWell(
            onTap:(){},
            child: Container(
              height: MediaQuery.of(context).size.height*0.08,
              color: Colors.blueAccent,
              child:Text('Subjects of 1st Sem ')
            ),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
        ],
      ),
    );
  }
}
