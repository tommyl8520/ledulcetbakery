import 'package:flutter/material.dart';
import 'package:ledulcetbakery/locator.dart';
import 'package:ledulcetbakery/widgets/top_menu.dart';
import 'package:provider/provider.dart';

import '../widgets/categories.dart';
import 'package:ledulcetbakery/widgets/popular_Items.dart';

import 'components/dish_list.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FoodList>(
      create: (context) => locator<FoodList>(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: <Widget>[TopMenuList(), DishCategories(), PopularItems()],
        ),
      ),
    );
  }
}
