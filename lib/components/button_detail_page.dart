import 'package:flutter/material.dart';

class ButtonDetailPage extends StatelessWidget {
  const ButtonDetailPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
          onPressed: () {},
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
              Icons.favorite_border_outlined,
              color: Theme.of(context).primaryColorLight,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
