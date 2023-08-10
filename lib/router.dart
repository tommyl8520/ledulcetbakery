import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ledulcetbakery/screens/components/notification.dart';
import 'package:ledulcetbakery/router.dart';
import 'home.dart';

const String initialRoute = "login";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/homePage':
        return MaterialPageRoute(builder: (_) => NotificationPage());
      case '/NotificationPage':
      //   return MaterialPageRoute(builder: (_) => OtpPage());
      // case '/cardList':
      //   return MaterialPageRoute(builder: (context) => OnBoarding());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
