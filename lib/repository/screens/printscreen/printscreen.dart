import 'package:blinklin/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Printscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Color(0xFFFBF0CE),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Uihelper.CustomText(
                    text: "Print Store",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    fontSize: 32,
                    fontfamily: 'bold',
                  ),
      
                  Uihelper.CustomText(
                    text: "Blinkit ensures secure prints at every stage",
                    color: Color(0xFF9C9C9C),
                    fontweight: FontWeight.normal,
                    fontSize: 14,
                  ),
                  SizedBox(height: 50),
                  Container(
                    height: 183,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 10),
                                Uihelper.CustomText(
                                  text: "Documents",
                                  color: Colors.black,
                                  fontweight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 10),
                                Uihelper.CustomText(
                                  text: "✦",
                                  color: Color(0xFF9C9C9C),
                                  fontweight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                SizedBox(width: 10),
                                Uihelper.CustomText(
                                  text: "Price starting at rs 3/page",
                                  color: Color(0xFF9C9C9C),
                                  fontweight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 10),
                                Uihelper.CustomText(
                                  text: "✦",
                                  color: Color(0xFF9C9C9C),
                                  fontweight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                SizedBox(width: 10),
                                Uihelper.CustomText(
                                  text: "Paper quality: 70 GSM",
                                  color: Color(0xFF9C9C9C),
                                  fontweight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 10),
                                Uihelper.CustomText(
                                  text: "✦",
                                  color: Color(0xFF9C9C9C),
                                  fontweight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                SizedBox(width: 10),
                                Uihelper.CustomText(
                                  text: "Single side prints",
                                  color: Color(0xFF9C9C9C),
                                  fontweight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                SizedBox(width: 10),
                                ElevatedButton(
                                  onPressed: () {},
      
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF27AF34),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    elevation: 5,
                                  ),
                                  child: Uihelper.CustomText(
                                    text: "Upload Files",
                                    color: Colors.white,
                                    fontweight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          right: 10,
                          bottom: 30,
                          child: Uihelper.CustomImage(img: "image 62.png"),
                        ),
                      ],
                    ),
                  ),
                  // Add your print store content here
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
