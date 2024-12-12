import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:shopping_app/pages/home.dart';  // Import Home widget
import 'package:shopping_app/pages/order.dart'; // Import Order widget
import 'package:shopping_app/pages/profile.dart'; // Import Profile widget

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late List<Widget> pages;
  late Home HomePage;
  late Order order;
  late Profile profile;
  int currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    HomePage = Home();
    order = Order();
    profile = Profile();
    pages = [HomePage, order, profile];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentTabIndex], // Display selected page
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: [
          Icon(Icons.home_outlined, color: Colors.white),
          Icon(Icons.shopping_bag, color: Colors.white),
          Icon(Icons.person_outlined, color: Colors.white),
        ],
      ),
    );
  }
}
