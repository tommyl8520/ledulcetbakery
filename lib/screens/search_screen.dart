import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:ledulcetbakery/screens/components/text_styles.dart' as style;

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 250.0,
                  color: Theme.of(context).primaryColor.withOpacity(0.2),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 10.0),
                      child: Material(
                        elevation: 10.0,
                        borderRadius: BorderRadius.circular(25.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search),
                              contentPadding:
                                  EdgeInsets.only(left: 15.0, top: 15.0),
                              hintText: 'Search for recipes and Food',
                              hintStyle: TextStyle(
                                  color: Theme.of(context).hintColor)),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Container(
                        padding: EdgeInsets.only(left: 10.0),
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    style: BorderStyle.solid,
                                    width: 3.0))),
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('POPULAR RECIPES',
                                    style: style.headerStyle3),
                                Text('THIS WEEK', style: style.headerStyle3),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15.0, left: 15.0),
                      height: 125.0,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _foodCard(),
                          SizedBox(width: 10.0),
                          _foodCard(),
                          SizedBox(width: 10.0),
                          _foodCard(),
                          SizedBox(width: 10.0),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'September 7',
                style: style.subHintTitle,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'TODAY',
                style: TextStyle(
                    fontFamily: 'Timesroman',
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
            ),
            SizedBox(height: 10.0),
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Container(
                    height: 275.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            image: AssetImage('assets/food10.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 150.0, left: 60.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'BEST OF',
                          style: TextStyle(
                              fontFamily: 'Timesroman',
                              fontSize: 25.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'THE DAY',
                          style: TextStyle(
                              fontFamily: 'Timesroman',
                              fontSize: 25.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          height: 3.0,
                          width: 50.0,
                          color: Theme.of(context).primaryColor,
                        )
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _foodCard() {
    return Container(
      height: 125.0,
      width: 250.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Theme.of(context).cardColor,
      ),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                    image: AssetImage('assets/food8.jpg'), fit: BoxFit.fill)),
            height: 125.0,
            width: 100.0,
          ),
          SizedBox(width: 20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Grilled Chicken',
                style: TextStyle(fontFamily: 'Quicksand'),
              ),
              Text(
                'with Fruit Salad',
                style: TextStyle(fontFamily: 'Quicksand'),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 2.0,
                width: 75.0,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 25.0,
                    width: 25.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.5),
                        image: DecorationImage(
                            image: AssetImage('assets/profil.jpg'))),
                  ),
                  SizedBox(width: 10.0),
                  Text('James Oliver',
                      style: TextStyle(fontFamily: 'Quicksand'))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
