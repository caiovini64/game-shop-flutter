import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steam_redesign/providers/games_provider.dart';
import 'package:steam_redesign/utils/app_routes.dart';
import 'package:steam_redesign/utils/colors_constants.dart';
import 'package:steam_redesign/views/game_detail_screen.dart';

import 'views/game_overview_screen.dart';

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
            headline2: TextStyle(
              color: neutralColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            headline3: TextStyle(
              color: accentColor,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            headline4: TextStyle(
              color: neutralColorOpacity,
              fontSize: 14,
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
          textButtonTheme: TextButtonThemeData(),
        ),
        home: GameOverviewScreen(),
        routes: {
          AppRoutes.GAME_DETAIL: (ctx) => GameDetailScreen(),
        },
      ),
    );
  }
}
