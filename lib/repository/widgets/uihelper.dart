import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Uihelper {
  static int titlepos = 50;
  static CustomImage({required String img}) {
    return Image.asset('assets/images/$img');
  }

  static CustomTextField({
    required TextEditingController controller,
    required String hintText,
    required BuildContext context,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.055,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontFamily: 'Regular',
                        color: Color(0xFF9C9C9C),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      hintText: hintText,

                      prefixIcon: Uihelper.CustomImage(
                        img: 'search-interface-symbol.png',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.only(right: 10),
                  child: Row(
                    children: [
                      Uihelper.CustomText(
                        text: "|",
                        color: Color(0xFFC5C5C5),
                        fontweight: FontWeight.bold,
                        fontSize: 20,
                        fontfamily: 'Regular',
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mic,
                          color: Color.fromARGB(255, 26, 25, 25),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static Customcolumn({
    required String Title,
    required String? subtitle,
    required img,
    required price,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 180,
        //color: Colors.black,
        child: Stack(
          fit: StackFit.loose,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Uihelper.CustomImage(img: img),
            ),
            Positioned(
              bottom: 60,
              right: 0,
              child: Container(
                height: 26,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.green, width: 0.8),
                ),
                child: Center(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size(0, 0),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {},
                    child: Text(
                      "ADD",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Uihelper.CustomWeight(Title: Title, subtitle: subtitle),
            Positioned(
              bottom: Uihelper.titlepos.toDouble(),
              child: Uihelper.CustomText(
                text: Title,
                color: Colors.black,
                fontweight: FontWeight.w400,
                fontSize: 8,
              ),
            ),

            Positioned(
              bottom: 25,
              child: Uihelper.CustomImage(img: "timer.png"),
            ),
            Positioned(
              bottom: 25,
              left: 20,
              child: Uihelper.CustomText(
                text: "16 MINS",
                color: Color(0xFF9C9C9C),
                fontweight: FontWeight.w400,
                fontSize: 8,
              ),
            ),
            Positioned(
              bottom: 5,
              child: Uihelper.CustomImage(img: "image 47.png"),
            ),
            Positioned(
              bottom: 0,
              left: 20,
              child: Uihelper.CustomText(
                text: price,
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static CustomWeight({required String? subtitle, required String Title}) {
    if (subtitle != null) {
      Uihelper.titlepos = 50;
      return Positioned(
        bottom: 40,
        child: Uihelper.CustomText(
          text: subtitle,
          color: Colors.black,
          fontweight: FontWeight.w400,
          fontSize: 8,
        ),
      );
    } else {
      Uihelper.titlepos = 45;
      return SizedBox.shrink();
    }
  }

  static CustomText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontfamily ?? 'regular',
        fontSize: fontSize,
        fontWeight: fontweight,
        color: color,
      ),
    );
  }
}
