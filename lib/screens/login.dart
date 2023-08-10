import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ledulcetbakery/screens/register.dart';

import '../home.dart';
import 'landing_page.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _showPassword = false;
  final TextEditingController _usernameControl = TextEditingController();
  final TextEditingController _emailControl = TextEditingController();
  final TextEditingController _passwordControl = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF247187),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                margin: EdgeInsets.symmetric(vertical: 65, horizontal: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF247187),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                margin: EdgeInsets.symmetric(vertical: 85, horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF247187),
                    boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).hintColor.withOpacity(0.2),
                          offset: Offset(0, 10),
                          blurRadius: 20)
                    ]),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 25),
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: Color(0xFFEEE476),
                      ),
                    ),
                    SizedBox(height: 20),
                    Card(
                      elevation: 3.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            hintText: "Username",
                            prefixIcon: Icon(
                              Icons.perm_identity,
                              color: Colors.black,
                            ),
                            hintStyle: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                            ),
                          ),
                          maxLines: 1,
                          controller: _usernameControl,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Card(
                      elevation: 3.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            hintText: "Password",
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            hintStyle: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                            ),
                          ),
                          maxLines: 1,
                          controller: _passwordControl,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot your password ?',
                        style: TextStyle(
                          color: Color(0xFFEEE476),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    FlatButton(
                      color: Color(0xFFEEE476),
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 80),
                      onPressed: () {
                        // 2 number refer the index of Home page
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return HomeScreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Login',
                        style: Theme.of(context).textTheme.bodyText1.merge(
                              TextStyle(color: Theme.of(context).primaryColor),
                            ),
                      ),
                      shape: StadiumBorder(),
                    ),
                    SizedBox(height: 20),
                    FlatButton(
                      color: Color(0xFFEEE476),
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 75),
                      onPressed: () {
                        // 2 number refer the index of Home page
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return RegisterScreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Register',
                        style: Theme.of(context).textTheme.bodyText1.merge(
                              TextStyle(color: Theme.of(context).primaryColor),
                            ),
                      ),
                      shape: StadiumBorder(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ])));
  }
}

//TextField(
//                      style: TextStyle(
//                        fontSize: 15.0,
//                        color: Colors.black,
//                      ),
//                      decoration: InputDecoration(
//                        contentPadding: EdgeInsets.all(10.0),
//                        border: OutlineInputBorder(
//                          borderRadius: BorderRadius.circular(5.0),
//                          borderSide: BorderSide(color: Colors.black),
//                        ),
//                        enabledBorder: OutlineInputBorder(
//                          borderSide: BorderSide(
//                            color: Colors.black,
//                          ),
//                          borderRadius: BorderRadius.circular(5.0),
//                        ),
//                        hintText: "Password",
//                        hintStyle: TextStyle(
//                          fontSize: 15.0,
//                        ),
//                      ),
//                    ),
