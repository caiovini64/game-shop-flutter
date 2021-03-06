import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:steam_redesign/models/cartItem.dart';
import 'package:steam_redesign/providers/game.dart';

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get item {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    double total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price;
    });
    return total;
  }

  void addItem(Game game) {
    if (_items.containsKey(game.id)) {
      _items.update(
          game.id,
          (existingItem) => CartItem(
                id: existingItem.id,
                title: existingItem.title,
                price: existingItem.price,
                imageUrl: existingItem.imageUrl,
              ));
    } else {
      _items.putIfAbsent(
          game.id,
          () => CartItem(
                id: Random().nextDouble().toString(),
                title: game.title,
                price: game.price,
                imageUrl: game.imageUrl,
              ));
    }
    notifyListeners();
  }
}
