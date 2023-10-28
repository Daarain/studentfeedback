import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:open_file/open_file.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:permission_handler/permission_handler.dart';


class datahold{
  late String enrollmentno;
  late String subject;
  late String cranswer1 ;
  late String cranswer2;
  late String cranswer3 ;
  late String cranswer4 ;
  late String cranswer5 ;
  late String cranswer6 ;
  late String facanswer1;
  late String facanswer2;
   late String franswer1;
   late String franswer2;
   late String franswer3;
   late String franswer4;
   late String franswer5;

}


class apg extends StatefulWidget {
  const apg({super.key});

  @override
  State<apg> createState() => _apgState();
}

class _apgState extends State<apg> {



  Future<void> genCSV() async {


    String enrollment="FS23CO0";
    List<List<dynamic>> dhList = new List.generate(11, (i) => []);

    try {
       dhList[0] = [['enrollmentNo','Subject','Coverage of course curriculum', 'Competence and commitment of faculty','Communication of Faculty','Pace of the content covered by the faculty',"Relevance of the Content of curriculum","Course Outcome1","Course Outcome2","Course Outcome3","Course Outcome4","Course Outcome5","Course Outcome6",]];
    for(int i=1;i<=10;i++) {
      String enrollmentno = enrollment;
      if (i < 10) {
        enrollmentno = enrollmentno + "0";
      }

      enrollmentno = enrollmentno + i.toString();
      print(enrollmentno);

      DatabaseReference dbref1 = FirebaseDatabase.instance.ref('student')
          .child(
          'year').child("FY").child("FS").child(enrollmentno).child(
          'greviances').child(
          "grevianceofsem1")
          .child("appliedphysics");
      DatabaseEvent usersnap = await dbref1.once();
      print(usersnap.snapshot.value);
       List<dynamic> dhl = new List.generate(15, (j) => []);
       // datahold dh = new datahold();
       // dh.cranswer1 = usersnap.snapshot.child("courseoutcomesrelated").child("cranswer1").value.toString();
       // dhl.add(dh);
      dhl[0] = [enrollmentno];
      dhl[1] = ['appliedphysics'];
      dhl[2] = [usersnap.snapshot.child("facultyrelated").child("franswer1").value.toString()];
      dhl[3] = [usersnap.snapshot.child("facultyrelated").child("franswer2").value.toString()];
      dhl[4] = [usersnap.snapshot.child("facultyrelated").child("franswer3").value.toString()];
      dhl[5] = [usersnap.snapshot.child("facultyrelated").child("franswer4").value.toString()];
      dhl[6] = [usersnap.snapshot.child("facultyrelated").child("franswer5").value.toString()];

      dhl[7] = [usersnap.snapshot.child("courseoutcomesrelated").child("cranswer1").child("panswer1").value.toString()];
      dhl[7] = [usersnap.snapshot.child("courseoutcomesrelated").child("cranswer1").child("strnswer1").value.toString()];
      dhl[8] = [usersnap.snapshot.child("courseoutcomesrelated").child("cranswer2").child("panswer2").value.toString()];
      dhl[9] = [usersnap.snapshot.child("courseoutcomesrelated").child("cranswer2").child("straswer2").value.toString()];
      dhl[10] = [usersnap.snapshot.child("courseoutcomesrelated").child("cranswer3").child("panswer3").value.toString()];
      dhl[11] = [usersnap.snapshot.child("courseoutcomesrelated").child("cranswer3").child("stranswer3").value.toString()];
      dhl[12] = [usersnap.snapshot.child("courseoutcomesrelated").child("cranswer4").child("panswer4").value.toString()];
      dhl[13] = [usersnap.snapshot.child("courseoutcomesrelated").child("cranswer4").child("stranswer4").value.toString()];
      dhl[14] = [usersnap.snapshot.child("courseoutcomesrelated").child("cranswer5").child("panswer5").value.toString()];
      dhl[14] = [usersnap.snapshot.child("courseoutcomesrelated").child("cranswer5").child("stranswer5").value.toString()];
      dhList[i] = [dhl];
      // dhList.add(dhl);
    }
    
    await writeCSV(dhList);
   print("method working ");
    }catch(e){
      print("$e");
    }

  }




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          "Greivance"
        ),
      ),

  body: Container(
    child: ElevatedButton(
      onPressed: (){


    genCSV();





      },
      child: Text("Generate CSV"
      ),
    ),
  ),

    );
  }
}
Future<void> writeCSV(List<List<dynamic>> rows) async {
  try {
    String csv = ListToCsvConverter().convert(rows);
    csv = csv.replaceAll("[", "");
    csv = csv.replaceAll("]", "");
    csv = csv.replaceAll("\"", "");

    final Directory directory = await getApplicationDocumentsDirectory();
    final String filePath = p.join(directory.path, 'data.csv'); // Use the 'join' method

    final File file = File(filePath);
    await file.writeAsString(csv);


    var status = await Permission.storage.request();
    print(status);
    if (status.isGranted) {
      OpenFile.open(filePath);
      // Permission is granted, you can now read and write to storage.
    } else if(status.isDenied){
      // Permission is denied or revoked. Handle accordingly.
      toast();
      await openAppSettings();


    }else{
      print('unknown error');
    }
    print("${directory.path}");
  } catch (e) {
    toast2();
  }
}
void toast() {
  Fluttertoast.showToast(
      msg:'permission not granted' ,
      toastLength: Toast.LENGTH_SHORT,
      backgroundColor: Colors.black,
      fontSize: 16,
      textColor: Colors.white);
}
void toast2() {
  Fluttertoast.showToast(
      msg:'Unknown error' ,
      toastLength: Toast.LENGTH_SHORT,
      backgroundColor: Colors.black,
      fontSize: 16,
      textColor: Colors.white);
}