import 'package:flutter/material.dart';

class AppWidget{
  static TextStyle boldTextFieldStyle()
  {
    return  TextStyle
      (color: Colors.black,
        fontSize: 28,
        fontWeight: FontWeight.bold);
  }
  static TextStyle lightTextFeildStyle()
  {
    return TextStyle(color:Colors.black54,fontSize: 20,fontWeight: FontWeight.w500);
   
  }
  static TextStyle semiboldTextFeildStyle()
  {
    return TextStyle(
        color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0);

  }
}