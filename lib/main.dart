import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steam_redesign/providers/games_provider.dart';
import 'package:steam_redesign/utils/colors_constants.dart';

import 'views/product_overview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GamesProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
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
            headline1: TextStyle(
              color: neutralColorOpacity,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            bodyText1: TextStyle(
              fontSize: 14,
              color: neutralColor,
            ),
            bodyText2: TextStyle(
              fontSize: 14,
              color: accentColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        home: ProductOverviewScreen(),
      ),
    );
  }
}
