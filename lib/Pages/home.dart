import 'package:flutter/material.dart';
import 'package:shopping_app/widget/support_widget.dart'; // Correct import statement

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List categories = [
    "images/headphone_icon.png",
        "images/lapton.png",
        "images/tv.png",
        "images/watch.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2), // Corrected background color
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
                      style: AppWidget
                          .boldTextFieldStyle(), // This now works as long as the class is defined correctly
                    ),
                    Text(
                      "Good morning",
                      style: AppWidget
                          .lightTextFeildStyle(), // Ensure this method exists in support_widget.dart
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "images/boy.jpg",
                    // Ensure this image exists in your assets folder
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0), // Adds space between the texts
            Container(

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [ // Ensure the shadow is not interfering with layout
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3), // Add shadow below the container
                  ),
                ],
              ),
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Products",
                    hintStyle: AppWidget.lightTextFeildStyle(),
                    prefixIcon: Icon(Icons.search, color: Colors
                        .black,) // Ensure this style exists in support_widget.dart
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories", style: AppWidget.semiboldTextFeildStyle()),
                Text("See all", style: TextStyle(color: Color(0xFFfd6f3e),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold))
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              height: 70,
              child: ListView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoryTile(image: categories[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
class CategoryTile extends StatelessWidget {
 String image;
 CategoryTile({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        color: Colors.white
      ),
      height: 90,
      width: 90,
      child: Column(children: [
Image.asset(image,height: 50,width: 50,fit: BoxFit.cover,),
      ],),
    );
  }
}




