import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  // const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var deviceHeight;
  var deviceWidth;
  final List<String> categories = [
    "All Bags",
    "Trending",
    "Popular",
    "Fashion",
    "New Arrival",
    "Best Sellers",
  ];

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        leading: Icon(Icons.menu),
        title: _titleText(),
        actions: [
          Icon(
            Icons.shopping_bag_rounded,
          ),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _catgoriesLayout(),
          ],
        ),
      ),
    );
  }

  Widget _catgoriesLayout() {
    return ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          },
        ),
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                categories.length,
                (index) => _categoryListTemplate(index)
              ),
            )));
  }

  Widget _titleText() {
    return Text(
      "Find Your Perfect Handbag",
      style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
      maxLines: 2,
      textAlign: TextAlign.center,
    );
  }

  Widget _categoryListTemplate(index) {
  return Row(
   children: [Text(
                  categories[index],
                  style: GoogleFonts.varelaRound(
                    textStyle: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              SizedBox(
                width: deviceWidth * 0.025,
              ),
  ] );
}
}

