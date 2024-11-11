
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffecefe8),
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "images/headphone.PNG", // Ensure this image exists in the assets folder
            ),
            Text(
              "Explore\nThe Best\nProducts",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 20.0,),//Adds spacing between the text and button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Container(
              margin: EdgeInsets.only(right: 20.0),
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle),
              alignment: Alignment.centerRight, // Align the button to the left
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
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
