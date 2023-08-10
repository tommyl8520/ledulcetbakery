import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:ledulcetbakery/screens/components/customappbar.dart';
import 'package:ledulcetbakery/screens/favorites.dart';
import 'package:ledulcetbakery/screens/profile.dart';
import 'package:ledulcetbakery/screens/search_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int currentPage = 0;
  Color primaryColor;

  PageController _pageController;

  @override
  void initState() {
    super.initState();
  }

  Widget current_page(position) {
    if (position == 0) {
      return HomeScreen();
    }
    if (position == 1) {
      return Center(child: SearchScreen());
    }
    if (position == 2) {
      return FavoriteScreen();
    }
    if (position == 3) {
      return Profile();
    }
  }

  @override
  Widget build(BuildContext context) {
    primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF247187),
        elevation: 50,
        onPressed: () {
          Navigator.pushNamed(context, '/shoppingCart');
        },
        child: Icon(
          Icons.shopping_cart,
          size: 28,
          color: Color(0xFFEEE476),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        barBackgroundColor: Color(0xFF247187),
        textColor: Theme.of(context).hintColor,
        activeIconColor: Color(0xFFEEE476),
        circleColor: Colors.white,
        inactiveIconColor: Color(0xFFEEE476),
        initialSelection: 0,
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.search, title: "Search"),
          TabData(iconData: Icons.favorite, title: "Favorite"),
          TabData(
            iconData: Icons.person,
            title: "Profile",
          ),
        ],
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
      body: current_page(currentPage),
      appBar: CustomAppBar(),
    );
  }
}
