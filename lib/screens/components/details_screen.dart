import 'package:flutter/material.dart';
import 'package:ledulcetbakery/models/product.dart';
import 'package:ledulcetbakery/screens/components/categories.dart';

import '../constants.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Categories(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}
