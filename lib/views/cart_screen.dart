import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steam_redesign/components/cart_item_widget.dart';
import 'package:steam_redesign/providers/cart.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Cart cart = Provider.of(context);
    final cartItem = cart.item.values.toList();
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Cart'),
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: ListView.builder(
        itemCount: cart.itemCount,
        itemBuilder: (context, i) => CartItemWidget(
          cartItem[i],
        ),
      ),
    );
  }
}
