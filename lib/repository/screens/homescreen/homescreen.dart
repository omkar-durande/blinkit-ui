import 'package:blinklin/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    final grocery = [
      {"img": "image 41.png", "title": "Vegetables &\n Fruits"},
      {"img": "image 42.png", "title": "Atta, Dal &\nRice"},
      {"img": "image 43.png", "title": "Oil, Ghee &\n Masala"},
      {"img": "image 44 (1).png", "title": "Dairy, Bread &\n Milk"},
      {"img": "image 45 (3).png", "title": "Biscuits &\n Bakery"},
    ];
    final sale = [
      {'img': 'image 50.png', 'title': "Lights, Diyas &\n Candles"},
      {'img': 'image 51.png', 'title': "Diwali\n Gifts"},
      {'img': 'image 52.png', 'title': "Appliances &\n Gadgets"},
      {'img': 'image 53.png', 'title': "Home \n& Living"},
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.045,
              child: Container(color: Color(0xFFEC0505)),
            ),
            Container(
              color: Color(0xFFEC0505),
              child: Column(
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Uihelper.CustomImage(img: "image 60.png"),
                      Uihelper.CustomImage(img: "image 55.png"),
                      Uihelper.CustomText(
                        text: "Mega Diwali Sale",
                        color: Color(0xFFFFFFFF),
                        fontweight: FontWeight.bold,
                        fontSize: 20,
                      ),

                      Uihelper.CustomImage(img: "image 56.png"),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 108,
                              width: 86,
                              //color: Colors.white,
                              decoration: BoxDecoration(
                                color: Color(0xFFEAD3D3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Uihelper.CustomText(
                                    text: sale[index]['title'].toString(),
                                    color: Colors.black,
                                    fontweight: FontWeight.w600,
                                    fontSize: 10,
                                  ),

                                  Uihelper.CustomImage(
                                    img: sale[index]['img'].toString(),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: sale.length,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Uihelper.Customcolumn(
                  Title: "Golden Glass ",
                  subtitle: "Wooden Lid Candle (Oudh)",
                  img: "image 63.png",
                  price: "35",
                ),
                SizedBox(width: 10),
                Uihelper.Customcolumn(
                  Title: "Royal Gulab Jamun",
                  subtitle: "By Bikano",
                  img: "image 57.png",
                  price: "35",
                ),
                SizedBox(width: 10),
                Uihelper.Customcolumn(
                  Title: "Bikaji Bhujia ",
                  subtitle: null,
                  img: "image 54.png",
                  price: "35",
                ),
              ],
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
          ],
        ),
      ),
    );
  }
}
