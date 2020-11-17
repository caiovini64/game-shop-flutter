import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steam_redesign/models/game.dart';

class CardGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Game game = Provider.of<Game>(context);
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                game.imageUrl,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                width: 170,
                height: 220,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      game.title,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      '\$ ${game.price.toString()}',
                      style: Theme.of(context).textTheme.bodyText2,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
