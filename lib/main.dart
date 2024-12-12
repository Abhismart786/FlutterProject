import 'package:flutter/material.dart';
import 'Pages/onboarding.dart'; // Import the Onboarding widget
import 'pages/home.dart';
import 'pages/bottomnav.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BottomNav() // Now it uses the Onboarding widget
    );
  }
}
