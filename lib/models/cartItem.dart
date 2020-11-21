import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String title;
  final double price;
  final String imageUrl;

  CartItem({
    @required this.id,
    @required this.title,
    @required this.price,
    @required this.imageUrl,
  });
}
