import 'package:flutter/material.dart';

class dataprovider with ChangeNotifier{
late String Username1;
late String Password1;
late String Shift;
late String Year;


void setdata(String username,String password,String shift,String year){
 Username1=username;
 Password1=password;
 Shift=shift;
 Year=year;

}



String get username=>Username1;
String get password=>Password1;
String get shift=>Shift;
String get year=>Year;




}