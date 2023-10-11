

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
            onTap:(){
              Navigator.pushNamed(context, 'apg');
            },
            child: Container(

              height: MediaQuery.of(context).size.height*0.1,
              color: Colors.white,
              child:Padding(
                padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.07,right: MediaQuery.of(context).size.width*0.07,top:  MediaQuery.of(context).size.width*0.05,bottom:  MediaQuery.of(context).size.width*0.03 ),
                child: Container(

                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              )
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
