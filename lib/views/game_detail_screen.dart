import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steam_redesign/components/game_information.dart';
import 'package:steam_redesign/providers/cart.dart';
import 'package:steam_redesign/providers/game.dart';

class GameDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Game game = ModalRoute.of(context).settings.arguments as Game;
    final Cart cart = Provider.of<Cart>(context, listen: false);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
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
            GameInformations(game),
            Row(
              children: [
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 60.0, right: 60, top: 14, bottom: 14),
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                        color: Theme.of(context).primaryColorLight,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onPressed: () {
                    cart.addItem(game);
                    print(cart.itemCount);
                  },
                ),
                SizedBox(
                  width: 8,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14, bottom: 14),
                    child: Icon(
                      game.isFavorite == false
                          ? Icons.favorite_border_outlined
                          : Icons.favorite,
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                  onPressed: () {
                    game.toggleFavorite();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
