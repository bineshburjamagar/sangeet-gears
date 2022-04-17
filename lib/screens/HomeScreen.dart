import 'package:flutter/material.dart';
import 'package:sangeetgears/common_widget/CategoriesWidget.dart';
import 'package:sangeetgears/common_widget/ProductsWidget.dart';

import 'package:sangeetgears/common_widget/SearchWidget.dart';
import 'package:sangeetgears/common_widget/TopPromoSlider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SearchWidget(),
          TopPromoSlider(),
          SizedBox(height: 30),
          CategoriesWidget(),
          SizedBox(height: 30),
          ProductsWidget(),
        ],
      ),
    );
  }
}
