import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:steam_redesign/components/popular_card_game.dart';
import 'package:steam_redesign/providers/game.dart';
import 'package:steam_redesign/providers/games_provider.dart';

class PopularsGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Game> loadedGames =
        Provider.of<GamesProvider>(context).gameItems;
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular',
                style: Theme.of(context).textTheme.headline1,
              ),
              TextButton(child: Text('View More'), onPressed: () {}),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 210,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, i) => ChangeNotifierProvider.value(
                  value: loadedGames[i],
                  child: PopularCardGame(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
