import 'package:flutter/material.dart';
import 'login.dart'; // Make sure login.dart is present in the 'pages' folder

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/login.png"),
            Center(
                child: Text("Sign Up", style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 25))),
            SizedBox(height: 10.0),
            Text("   Please enter the details below to continue", style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey)),
            SizedBox(height: 20.0),
            // Name TextField
            Container(
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(color: Color(0xFFF4F5F9)),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none, hintText: " Name"),
              ),
            ),
            SizedBox(height: 20.0),
            // Email TextField
            Container(
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(color: Color(0xFFF4F5F9)),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none, hintText: " Email"),
              ),
            ),
            SizedBox(height: 15.0),
            // Password TextField
            Container(
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(color: Color(0xFFF4F5F9)),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none, hintText: " Password"),
              ),
            ),
            SizedBox(height: 20.0),
            // Sign Up Button
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: Colors.green, borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            // Sign In Option
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?", style: TextStyle(color: Colors.grey, fontSize: 20.0)),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogIn()), // Added the missing semicolon here
                    );
                  },
                  child: Text(
                    "    Sign In",
                    style: TextStyle(color: Colors.green, fontSize: 20.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
