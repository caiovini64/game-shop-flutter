import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steam_redesign/components/card_games.dart';
import 'package:steam_redesign/models/game.dart';
import 'package:steam_redesign/providers/games_provider.dart';

class RecommendedGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Game> loadedGames =
        Provider.of<GamesProvider>(context).gameItems;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended',
                  style: Theme.of(context).textTheme.headline1,
                ),
                TextButton(child: Text('View More'), onPressed: () {}),
              ],
            ),
            Container(
              height: 300,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: loadedGames.length,
                itemBuilder: (context, i) => ChangeNotifierProvider.value(
                  value: loadedGames[i],
                  child: CardGames(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
