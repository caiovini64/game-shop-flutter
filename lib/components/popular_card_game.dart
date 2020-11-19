import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steam_redesign/models/game.dart';
import 'package:steam_redesign/utils/app_routes.dart';

class PopularCardGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Game game = Provider.of<Game>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          AppRoutes.GAME_DETAIL,
          arguments: game,
        );
      },
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Image.network(
            game.coverUrl,
            alignment: Alignment.topLeft,
          ),
          Consumer<Game>(
            builder: (context, game, _) => IconButton(
              icon: game.isFavorite
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border),
              color: Theme.of(context).accentColor,
              onPressed: () {
                game.toggleFavorite();
              },
            ),
          ),
        ],
      ),
    );
  }
}
