import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:steam_redesign/models/game.dart';
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
              height: 200,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                ),
                itemCount: loadedGames.length,
                itemBuilder: (context, i) => ChangeNotifierProvider.value(
                  value: loadedGames[i],
                  child: Image.network(
                    loadedGames[i].popular == true
                        ? loadedGames[i].coverUrl
                        : loadedGames[i].coverUrl,
                    alignment: Alignment.topLeft,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
