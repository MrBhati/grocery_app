import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:grocery_app/Screens/AllCatogerys/view/AllCatogerys.dart';
import 'package:grocery_app/Screens/Exactcatproductshow/view/Exactcatrelatedallproductshow.dart';
import 'package:grocery_app/Screens/HomePage/view/Homepage.dart';
import 'package:grocery_app/Screens/Singleproduct/view/Singleproduct.dart';
import 'package:grocery_app/Screens/ViewOrderSubscription/view/viewSubscriptionOrder.dart';
import 'package:grocery_app/Screens/ViewSubscription/view/viewAllSubscription.dart';
import 'package:grocery_app/ZoomProduct/view/zoomProduct.dart';
import 'package:grocery_app/colorModal/color.dart';

import 'Screens/ViewSubscription/view/ViewSingleSubscription.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: ColorPallete().color,
      statusBarColor: ColorPallete().color,
      systemNavigationBarDividerColor: ColorPallete().color));
  runApp(GetMaterialApp(
      getPages: [
        GetPage(
            name: "/MyHomepage",
            page: () => Homepage(),
            transition: Transition.rightToLeft,
            transitionDuration: Duration(milliseconds: 400)),
        GetPage(
            name: "/Exactcatallproductshow",
            page: () => CatRelatedAllProductShow(),
            transition: Transition.downToUp,
            transitionDuration: Duration(milliseconds: 400)),
        GetPage(
            name: "/SingleProduct",
            page: () => SingleProduct(),
            transition: Transition.upToDown,
            transitionDuration: Duration(milliseconds: 500)),
        GetPage(
            name: "/ZoomProduct",
            page: () => ZoomProduct(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: Duration(milliseconds: 500)),
        GetPage(
            name: "/viewAllSubscription",
            page: () => ViewAllSubscription(),
            transition: Transition.downToUp,
            transitionDuration: Duration(milliseconds: 500)),
        GetPage(
            name: "/viewSingleSubscription",
            page: () => ViewSingleSubscription(),
            transition: Transition.upToDown,
            transitionDuration: Duration(milliseconds: 500)),
        GetPage(
            name: "/AllCatogerys",
            page: () => AllCatogerys(),
            transition: Transition.downToUp,
            transitionDuration: Duration(milliseconds: 500)),
        GetPage(
            name: "/viewSubscriptionOrder",
            page: () => ViewSubscriptionOrder(),
            transition: Transition.downToUp,
            transitionDuration: Duration(milliseconds: 500)),
      ],
      debugShowCheckedModeBanner: false,
      title: "Organic Bharat",
      home: Homepage()));
}
