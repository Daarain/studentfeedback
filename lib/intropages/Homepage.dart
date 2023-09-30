import 'package:flutter/material.dart';
import 'package:studentfeedback/AppColors.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      // appBar: AppBar(
      //
      //   title: Text("Homepage",style: TextStyle(
      //     fontSize: MediaQuery.of(context).size.height*0.04,
      //
      //   ),),
      //   centerTitle: true,
      // ),
      body:SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.04,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                child: Image.asset('assets/images/Gpmlogo1.png',scale: 1,),
              ),
            ),
            Center(
              child: Container(
                //color: Colors.yellow,

                child: Text("Welcome",style: TextStyle(
                  // color: Colors.white38,
                  fontSize: MediaQuery.of(context).size.height*0.06,
                  fontFamily: 'Arvo',
                  fontWeight: FontWeight.w900
                ),),

              ),
            ),
            SizedBox(   height: MediaQuery.of(context).size.height*0.04, ),


            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20)
                ),
                  color: Colors.white70
              ),

             // color: Colors.blue,
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height*0.65,
              width: MediaQuery.of(context).size.width,
              child: Text("Welcome to the Student Grievance App – Your Voice, Your Solution! We understand that every student deserves a supportive and fair educational experience, which is why we've created this platform to empower you. Whether you're facing academic challenges, administrative issues, or any concerns related to your educational journey, we're here to help you find solutions. Our user-friendly interface allows you to submit grievances, track their progress, and connect with relevant authorities quickly and efficiently. At Student Grievance App, we're committed to fostering a positive learning environment where your feedback matters. Together, let's ensure that your voice is heard, and your concerns are addressed, because every student deserves a fair and equitable education.. ",style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.02,fontWeight: FontWeight.bold,color: AppColors.uppertext),),
            )


          ],
        ),
      )
    );
  }
}
