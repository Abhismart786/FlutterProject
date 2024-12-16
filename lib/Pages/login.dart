import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Image.asset("images/login.png"),

          Center(child: Text("Sign In",style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25))),
          SizedBox(height: 20.0,),
          Text("   Please enter the details below to \n                      continue",style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25,color: Colors.grey)),
            SizedBox(height: 20.0,),
            Text("    Email",style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20)),
            Container(
              padding: EdgeInsets.only(left:20.0),
              decoration: BoxDecoration(color: Color(0xFFF4F5F9)),
            child: TextField(
              decoration: InputDecoration(border: InputBorder.none,hintText: "    Email"),
            ),),

            SizedBox(height: 20.0,),
            Text("    Password",style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20)),
            Container(
              padding: EdgeInsets.only(left:20.0),
              decoration: BoxDecoration(color: Color(0xFFF4F5F9)),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none,hintText: "    Password"),
              ),),
            Center(
              child:
            Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(10)
              ),
              child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold),),
            ),),
        ],),
      ),
    );
  }
}
