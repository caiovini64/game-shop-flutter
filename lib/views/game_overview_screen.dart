import 'package:flutter/material.dart';

import 'package:steam_redesign/components/cart_buttom.dart';
import 'package:steam_redesign/components/populars_games.dart';
import 'package:steam_redesign/components/recommended_games.dart';
import 'package:steam_redesign/components/search_box.dart';

class GameOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        actions: [
          CartButton(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchBox(),
            PopularsGames(),
            RecommendedGames(),
          ],
        ),
      ),
    );
  }
}
