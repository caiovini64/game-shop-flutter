import 'package:flutter/material.dart';

class PopularsGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular',
                style: Theme.of(context).textTheme.headline1,
              ),
              TextButton(child: Text('View More'), onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
