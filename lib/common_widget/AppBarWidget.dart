import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sangeetgears/components/AppSignIn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget appBarWidget(context) {
  return AppBar(
    elevation: 0.0,
    centerTitle: true,
    title: Text(
      'SANGEET GEARS',
      style: TextStyle(
        fontFamily: 'KaushanScript',
        letterSpacing: sqrt1_2,
        color: Colors.black,
      ),
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AppSignIn()),
          );
        },
        icon: Icon(FontAwesomeIcons.userAlt),
        color: Colors.black,
      ),
    ],
  );
}

class Colours {}
