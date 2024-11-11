import 'package:flutter/material.dart';
import 'package:shopping_app/widget/support_widget.dart'; // Correct import statement

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(
                  "Hey Abhishek",
                  style: AppWidget.boldTextFieldStyle(), // This now works as long as the class is defined correctly
                ),
                    Text(
                      "Good morning",
                      style: AppWidget.lightTextFeildStyle(), // Ensure this method exists in support_widget.dart
                    ),
        ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "images/boy.jpg", // Ensure this image exists in your assets folder
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10), // Adds some space between the texts

          ],
        ),
      ),
    );
  }
}
