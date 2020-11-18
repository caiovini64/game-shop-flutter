import 'package:flutter/material.dart';
import 'package:steam_redesign/models/game.dart';

class GameInformations extends StatelessWidget {
  const GameInformations(this.game);

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  game.title,
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  '\$ ${game.price.toString()}',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              game.description,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ],
      ),
    );
  }
}
