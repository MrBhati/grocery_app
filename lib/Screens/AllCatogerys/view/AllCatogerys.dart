import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

import 'package:grocery_app/colorModal/color.dart';

class AllCatogerys extends StatefulWidget {
  @override
  _AllCatogerysState createState() => _AllCatogerysState();
}

class _AllCatogerysState extends State<AllCatogerys> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
            titleSpacing: 0.0,
            backgroundColor: Colors.white,
          ),
          body: Container(
            padding: EdgeInsets.only(top: 20),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: catagoryUrl.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 100,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        height: 100,
                        child: Ink(
                          decoration: BoxDecoration(
                            color: ColorPallete().color.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: NetworkImage(catagoryUrl[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {
                              Get.toNamed("Exactcatallproductshow?cat_name=" +
                                  catName[index] +
                                  "&cat_img=" +
                                  catagoryUrl[index]);
                            },
                            splashColor: Colors.grey[800]?.withOpacity(0.5),
                          ),
                        ),
                      ),
                      Text(catName[index],
                          style: GoogleFonts.lato(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.normal)),
                    ],
                  );
                }),
          )
          //SingleChildScrollView(child: body(context)),
          //floatingActionButton: speedDial(),
          ),
    );
  }

  // Widget Start

  Widget appBarActions() {
    var x = Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: IconButton(
            visualDensity: VisualDensity(horizontal: -4),
            icon: Icon(Icons.shopping_cart, color: Colors.grey[600]),
            onPressed: () {},
          ),
        ),
        Positioned(
            child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Icon(Icons.brightness_1,
                  size: 20.0, color: Colors.green[800]),
            ),
            Positioned(
                top: 6.0,
                right: 4.0,
                child: Center(
                  child: Text(
                    "10",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.0,
                        fontWeight: FontWeight.w500),
                  ),
                )),
          ],
        )),
      ],
    );

    return x;
  }

  Widget wishIcon() {
    var x = Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: IconButton(
            visualDensity: VisualDensity(horizontal: -4),
            icon: Icon(Icons.favorite, color: Colors.red[600]),
            onPressed: () {},
          ),
        ),
        Positioned(
            child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Icon(Icons.brightness_1,
                  size: 20.0, color: Colors.green[800]),
            ),
            Positioned(
                top: 6.0,
                right: 4.0,
                child: Center(
                  child: Text(
                    "10",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.0,
                        fontWeight: FontWeight.w500),
                  ),
                )),
          ],
        )),
      ],
    );

    return x;
  }

  List<String> catagoryUrl = [
    "https://cccapi.cococa.in/public/uploads/category/89SGKJLKR0LOAmJ0_category.jpg"
        "https://cccapi.cococa.in/public/uploads/category/pV2LmhqIwW7dIctX_category.jpg"
        "https://cccapi.cococa.in/public/uploads/category/rvUx6OiWUgqKnCeU_category.jpg",
    "https://cccapi.cococa.in/public/uploads/category/9auES4dn8c7Vvej9_category.jpg",
    "https://cccapi.cococa.in/public/uploads/category/bPnYNh5CcfHwBsa6_category.jpg",
    "https://cccapi.cococa.in/public/uploads/category/6e26yvIAiJSryQCi_category.jpg",
    "https://cccapi.cococa.in/public/uploads/category/GSfEXrz2syWxPjSh_category.jpeg",
    "https://cccapi.cococa.in/public/uploads/category/xASUAinvoTqlNq7J_category.jpeg",
    "https://cccapi.cococa.in/public/uploads/category/idITwiHwrt31vpkx_category.jpg",
    "https://cccapi.cococa.in/public/uploads/category/5v3KqAQsMLsNrfzQ_category.jpg",
    "https://cccapi.cococa.in/public/uploads/category/PxK1TC6vQrzeTRKe_category.jpeg",
    "https://cccapi.cococa.in/public/uploads/category/85aLaJuvXAj6vniX_category.jpeg"
  ];

  List<String> catName = [
    "Oils & Masalas",
    "Beverages",
    "Snacks",
    "Cakes & Dairy ",
    "Dry Fruit",
    "Baby Care",
    "Beauty & Hygiene",
    "Cleaning & Household",
    "Office Products",
    "Electricals"
  ];

  // End Of Class
}
