import 'package:flutter/material.dart';
import 'package:steam_redesign/utils/colors_constants.dart';

import 'views/product_overview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primaryColor,
        backgroundColor: backgroundColor,
        accentColor: accentColor,
        iconTheme: IconThemeData(color: neutralColor),
        primaryIconTheme: IconThemeData(color: neutralColor),
        accentIconTheme: IconThemeData(color: neutralColor),
        primaryColorLight: neutralColor,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: neutralColor),
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(color: neutralColorOpacity),
        ),
      ),
      home: ProductOverviewScreen(),
    );
  }
}
