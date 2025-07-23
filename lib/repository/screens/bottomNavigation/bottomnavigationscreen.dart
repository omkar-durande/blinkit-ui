import 'package:blinklin/repository/screens/cartscreen/cartscreen.dart';
import 'package:blinklin/repository/screens/homescreen/homescreen.dart';
import 'package:blinklin/repository/screens/printscreen/printscreen.dart';
import 'package:blinklin/repository/screens/categoryscreen/categoryscreen.dart';
import 'package:blinklin/repository/widgets/uihelper.dart';

import 'package:flutter/material.dart';

class Bottomnavigationscreen extends StatefulWidget {
  const Bottomnavigationscreen({super.key});

  _bottomnavigationscreenState createState() => _bottomnavigationscreenState();
}

class _bottomnavigationscreenState extends State<Bottomnavigationscreen> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    Cardscreen(),
    Shoppingbag(),
    Printscreen(),
    // Add other screens here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: selectedIndex, children: screens),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: 'home.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: 'shopping-bag 1.png'),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: 'category.png'),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: 'printer 1.png'),
            label: 'Profile',
          ),
        ],
        type: BottomNavigationBarType
            .fixed, // BottomnavigationBarType.shifting, for more animated look
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
