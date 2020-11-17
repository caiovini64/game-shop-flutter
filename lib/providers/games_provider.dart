import 'package:flutter/cupertino.dart';
import 'package:steam_redesign/data/dummy_data.dart';
import 'package:steam_redesign/models/game.dart';

class GamesProvider with ChangeNotifier {
  List<Game> _gameItems = DUMMY_GAMES;

  List<Game> get gameItems => [..._gameItems];
}
