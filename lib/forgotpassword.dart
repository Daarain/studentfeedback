import 'package:flutter/material.dart';

class forgotpassword extends StatefulWidget {
  const forgotpassword({super.key});

  @override
  State<forgotpassword> createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
     title: Text('Forgot Password',
     style: TextStyle(
       fontSize: 23,
       fontWeight: FontWeight.bold
     ),),),
      body:
      SingleChildScrollView(
        child: Column(
        children: [
          SizedBox(
            height:MediaQuery.of(context).size.height*0.05 ,
          ),
          Container(
            alignment: Alignment.center,
            child: Image.asset('assets/images/Gpmlogo1.png'),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.06,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Enter your E-mail',
                  labelText: 'E-mail',
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
                      borderSide: BorderSide(color: Colors.purple, width: 2))),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.1,
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.5,
            height: MediaQuery.of(context).size.height*0.06 ,

            child:ElevatedButton(

              onPressed: (){},
              child: Text('Send',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19


                ), ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
            ),

          ),



        ],

      ),)

    );
  }
}
