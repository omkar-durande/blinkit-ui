import 'package:blinklin/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Cardscreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.045,
            child: Container(color: Color(0xFFF7CB45)),
          ),
          Container(
            height: 160,
            width: double.infinity, // use full width of the device
            color: Color(0xFFF7CB45),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 10),
                    Uihelper.CustomText(
                      text: "Blinkit in",
                      color: Colors.black,
                      fontweight: FontWeight.w700,
                      fontSize: 12,
                      fontfamily: 'bold',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    Uihelper.CustomText(
                      text: "16 minutes",
                      color: Colors.black,
                      fontweight: FontWeight.w700,
                      fontSize: 20,
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsetsGeometry.only(left: 9, right: 18),
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(Icons.person, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Uihelper.CustomText(
                      text: "HOME ",
                      color: Colors.black,
                      fontweight: FontWeight.w700,
                      fontSize: 12,
                      fontfamily: 'bold',
                    ),
                    Uihelper.CustomText(
                      text: "- ",
                      color: Colors.black,
                      fontweight: FontWeight.w700,
                      fontSize: 12,
                      fontfamily: 'bold',
                    ),
                    Uihelper.CustomText(
                      text: "Sujal Dave, Ratanada, Jodhpur (Raj)",
                      color: Colors.black,
                      fontweight: FontWeight.w400,
                      fontSize: 12,
                      fontfamily: 'Regular',
                    ),
                    Icon(Icons.arrow_drop_down, color: Colors.black),
                  ],
                ),
                SizedBox(height: 10),
                Uihelper.CustomTextField(
                  controller: _controller,
                  hintText: 'Search “ice-cream”',
                  context: context,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Uihelper.CustomImage(img: "shopping-cartscreen.png"),
                Uihelper.CustomText(
                  text: "Reordering will be easy",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontSize: 16,
                ),
                Uihelper.CustomText(
                  text:
                      "Items you order will show up here so you can buy \n                            them again easily.",
                  color: Colors.black,
                  fontweight: FontWeight.w500,
                  fontSize: 10,
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    Uihelper.CustomText(
                      text: "Bestsellers",
                      color: Colors.black,
                      fontweight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ],
                ),
                // GridTile(child: child)
                SizedBox(height: 20),
                Row(
                  children: [
                    Uihelper.Customcolumn(
                      img: "image 45.png",
                      Title: "Amul Taaza Toned",
                      subtitle: "Fresh Milk",
                      price: "25",
                    ),
                    SizedBox(width: 10),
                    Uihelper.Customcolumn(
                      img: "image 44.png",
                      Title: "Potato (Aloo)",
                      subtitle: null,
                      price: "37",
                    ),
                    SizedBox(width: 10),
                    Uihelper.Customcolumn(
                      img: "image 46.png",
                      Title: "Hybrid Tomato",
      
                      subtitle: null,
                      price: "37",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
