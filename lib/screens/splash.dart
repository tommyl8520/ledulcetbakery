import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimeout() {
    return Timer(Duration(seconds: 6), changeScreen);
  }

  changeScreen() async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return LogInScreen();
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF247187),
      body: Container(
        margin: EdgeInsets.only(left: 40.0, right: 40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(width: 40.0),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/ledulcetcologo.webp'),
                ),
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: 15.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
