import 'package:flutter/material.dart';

class Game with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String coverUrl;
  bool popular;
  bool isFavorite;

  Game({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    this.coverUrl,
    this.imageUrl,
    this.isFavorite = false,
    this.popular,
  });

  void toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
