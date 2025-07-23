import 'package:blinklin/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Shoppingbag extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final grocery = [
    {"img": "image 41.png", "title": "Vegetables &\n Fruits"},
    {"img": "image 42.png", "title": "Atta, Dal &\nRice"},
    {"img": "image 43.png", "title": "Oil, Ghee &\n Masala"},
    {"img": "image 44 (1).png", "title": "Dairy, Bread &\n Milk"},
    {"img": "image 45 (3).png", "title": "Biscuits &\n Bakery"},
  ];
  final grocery_second = [
    {"img": "image 21.png", "title": "Dry Fruits &\n Cereals"},
    {"img": "image 22.png", "title": "Kitchen &\n Appliances"},
    {"img": "image 23.png", "title": "Tea &\n Coffees"},
    {"img": "image 24.png", "title": "Ice Creams &\n much more"},
    {"img": "image 25.png", "title": "Noodles &\n Packet Food"},
  ];
  final snacks = [
    {"img": "image 31.png", "title": "Chips &\n Namkeen"},
    {"img": "image 32.png", "title": "Sweets &\n Chocalates"},
    {"img": "image 33.png", "title": "Drinks &\n Juices"},
    {"img": "image 34.png", "title": "Sauces &\n Spreads"},
    {"img": "image 35.png", "title": "Beauty &\n Cosmetics"},
  ];
  final household = [
    {"img": "image 36.png", "title": "Cleaning &\n Household"},
    {"img": "image 37.png", "title": "Laundry &\n Detergents"},
    {"img": "image 38.png", "title": "Home Care &\n Utilities"},
    {"img": "image 39.png", "title": "Pet Care &\n Supplies"},
    {"img": "image 40.png", "title": "Personal Care &\n Hygiene"},
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    hintText: "Search “ice-cream”",
                    context: context,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Uihelper.CustomText(
                  text: "Grocery & Kitchen",
                  color: Colors.black,
                  fontweight: FontWeight.w700,
                  fontSize: 14,
                  fontfamily: 'bold',
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 78,
                                width: 71,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD9EBEB),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Uihelper.CustomImage(
                                  img: grocery[index]['img'].toString(),
                                ),
                              ),
                              SizedBox(height: 5),
                              Uihelper.CustomText(
                                text: grocery[index]['title'].toString(),
                                color: Colors.black,
                                fontweight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: grocery.length,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 78,
                                width: 71,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD9EBEB),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Uihelper.CustomImage(
                                  img: grocery_second[index]['img'].toString(),
                                ),
                              ),
                              SizedBox(height: 5),
                              Uihelper.CustomText(
                                text: grocery_second[index]['title'].toString(),
                                color: Colors.black,
                                fontweight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: grocery.length,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Uihelper.CustomText(
                  text: "Snacks & Drinks",
                  color: Colors.black,
                  fontweight: FontWeight.w700,
                  fontSize: 14,
                  fontfamily: 'bold',
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 78,
                                width: 71,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD9EBEB),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Uihelper.CustomImage(
                                  img: snacks[index]['img'].toString(),
                                ),
                              ),
                              SizedBox(height: 5),
                              Uihelper.CustomText(
                                text: snacks[index]['title'].toString(),
                                color: Colors.black,
                                fontweight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: snacks.length,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 10),
                Uihelper.CustomText(
                  text: "Household Essentials",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontSize: 14,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 78,
                                width: 71,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD9EBEB),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Uihelper.CustomImage(
                                  img: household[index]['img'].toString(),
                                ),
                              ),
                              SizedBox(height: 5),
                              Uihelper.CustomText(
                                text: household[index]['title'].toString(),
                                color: Colors.black,
                                fontweight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: household.length,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
