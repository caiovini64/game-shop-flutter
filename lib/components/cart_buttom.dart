import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steam_redesign/providers/cart.dart';
import 'package:steam_redesign/utils/app_routes.dart';

class CartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, _) => Badge(
        position: BadgePosition.topEnd(top: 5, end: 4),
        badgeContent: Text(
          cart.itemCount.toString(),
          style: TextStyle(fontSize: 10, color: Colors.white),
        ),
        child: IconButton(
          icon: Icon(Icons.shopping_cart_outlined),
          onPressed: () {
            Navigator.of(context).pushNamed(
              AppRoutes.CART_SCREEN,
            );
          },
        ),
      ),
    );
  }
}
