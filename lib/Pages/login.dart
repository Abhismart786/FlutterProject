
import 'package:flutter/material.dart';
import 'signup.dart';  // Ensure this import is correct

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
        padding: EdgeInsets.all(20.0),  // Added padding for better spacing
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/login.png"),  // Ensure the image path is correct

            Center(
              child: Text(
                "Sign In",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              "Please enter the details below to continue",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),
            ),
            SizedBox(height: 20.0),

            // Email Field
           // Text("    Email", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(color: Color(0xFFF4F5F9)),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none, hintText: " Email"),
              ),
            ),
            SizedBox(height: 25.0),

            // Password Field
            //Text("    Password", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(color: Color(0xFFF4F5F9)),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none, hintText: " Password"),
              ),
            ),
            SizedBox(height: 25.0),

            // Login Button
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.0),

            // Sign Up Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?", style: TextStyle(color: Colors.grey, fontSize: 20.0)),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),  // Added the missing semicolon
                    );
                  },
                  child: Text(
                    "    Sign up",
                    style: TextStyle(color: Colors.green, fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
