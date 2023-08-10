// import 'package:flutter/material.dart';

//import 'package:flutter/material.dart';
//import 'package:ledulcetbakery/screens/favorites.dart';
//
//import '../../home.dart';
//
//class BottomNavBar extends StatelessWidget {
//  const BottomNavBar({
//    Key key,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return BottomNavigationBar(
//      items: [
//        BottomNavigationBarItem(
//          icon: Icon(Icons.shopping_basket),
//          title: Text('Cart'),
//        ),
//        BottomNavigationBarItem(
//          title: Text('fav'),
//          icon: IconButton(
//            icon: Icon(Icons.favorite_border),
//            onPressed: () {
//              // 2 number refer the index of Home page
//              Navigator.of(context).push(
//                MaterialPageRoute(
//                  builder: (BuildContext context) {
//                    return FavoriteScreen();
//                  },
//                ),
//              );
//            },
//          ),
//        ),
//        BottomNavigationBarItem(
//          title: Text('Home'),
//          icon: IconButton(
//            icon: Icon(Icons.home),
//            onPressed: () {
//              // 2 number refer the index of Home page
//              Navigator.of(context).push(
//                MaterialPageRoute(
//                  builder: (BuildContext context) {
//                    return HomeScreen();
//                  },
//                ),
//              );
//            },
//          ),
//        ),
//      ],
//    );
//  }
//}
