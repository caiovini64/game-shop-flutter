import 'package:flutter/material.dart';
import 'package:steam_redesign/models/game.dart';

class GameDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Game game = ModalRoute.of(context).settings.arguments as Game;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 400,
                child: Image.network(
                  game.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
