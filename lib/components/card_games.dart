import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steam_redesign/models/game.dart';

class CardGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Game game = Provider.of<Game>(context);
    return Image.network(game.imageUrl);
  }
}
