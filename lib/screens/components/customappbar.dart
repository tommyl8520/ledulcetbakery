import 'package:flutter/material.dart';
import 'package:ledulcetbakery/screens/components/text_styles.dart' as style;
import 'package:ledulcetbakery/router.dart';

import '../landing_page.dart';
import 'notification.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: size,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
        child: SafeArea(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 18,
                ),
              ),
              Expanded(
                child: Text(
                  "Le Dulcet",
                  style: style.appBarTextTheme,
                  textAlign: TextAlign.center,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return NotificationPage();
                      },
                    ),
                  );
                },
                child: Icon(
                  Icons.notifications_none,
                  color: Color(0xFFEEE476),
                  size: 28,
                ),
              ),
            ],
          ),
        ),
        color: Color(0xFF247187),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(90);
}
