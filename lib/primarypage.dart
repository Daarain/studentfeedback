import 'package:flutter/material.dart';

class primarypage extends StatefulWidget {
  const primarypage({super.key});

  @override
  State<primarypage> createState() => _primarypageState();
}

class _primarypageState extends State<primarypage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/primarypage.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(

          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Text(''),
            ),
            Center(
              child: Text(
                'Login as',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.04,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.18,),
            Container(
              width: MediaQuery.of(context).size.width*0.45,
              height: MediaQuery.of(context).size.height*0.05,

              child: ElevatedButton(
              
                onPressed: (){
                  Navigator.pushNamed(context, 'adminlogin');
                },
              
                child: Text('ADMIN',style: TextStyle(

                  fontWeight: FontWeight.w900,
                  fontSize: MediaQuery.of(context).size.height*0.015,
                  letterSpacing: 2
                ),),
                style: ElevatedButton.styleFrom(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
                  backgroundColor: Colors.lightBlue,
                ),
              ),
            ),SizedBox(height: MediaQuery.of(context).size.height*0.04,)
            ,  Container(
              width: MediaQuery.of(context).size.width*0.45,
              height: MediaQuery.of(context).size.height*0.05,

              child: ElevatedButton(

                onPressed: (){
                  Navigator.pushNamed(context, 'login_page');
                },

                child: Text('STUDENT',style: TextStyle(

                    fontWeight: FontWeight.w900,
                    fontSize: MediaQuery.of(context).size.height*0.015,
                    letterSpacing: 2
                ),),
                style: ElevatedButton.styleFrom(

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  backgroundColor: Colors.lightBlue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
