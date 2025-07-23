import 'package:blinklin/repository/screens/bottomNavigation/bottomnavigationscreen.dart';
import 'package:blinklin/repository/widgets/uihelper.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Loginscreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Uihelper.CustomImage(img: 'BlinkitLoginScreen.jpg'),
            SizedBox(height: 10),
            Uihelper.CustomImage(img: 'blinkitname.jpg'),
            SizedBox(height: 10),
            Uihelper.CustomText(
              text: "India's last minute app",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontSize: 20,
              fontfamily: 'bold',
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //color: Colors.black,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Uihelper.CustomText(
                      text: "Omkar",
                      color: Colors.black,
                      fontweight: FontWeight.normal,
                      fontSize: 16,
                    ),
                    Uihelper.CustomText(
                      text: "930xxxxxx8",
                      color: Colors.grey,
                      fontweight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    SizedBox(
                      height: 48,
                      width: 295,

                      child: Container(
                        // color: Color(0xFFE23744),
                        child: ElevatedButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder:  (context) => Bottomnavigationscreen()));},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFE23744),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Uihelper.CustomText(
                                text: "Login with ",
                                color: Colors.white,
                                fontweight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              SizedBox(width: 5),
                              Uihelper.CustomImage(img: "zomatologinname.png"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Uihelper.CustomText(
                      text:
                          "Access your saved addresses from Zomato automatically!",
                      color: Color(0xFF9C9C9C),
                      fontweight: FontWeight.normal,
                      fontSize: 10,
                    ),
                    SizedBox(height: 10),
                    Uihelper.CustomText(
                      text: "or login with phone number",
                      color: Color(0xFF269237),
                      fontweight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
