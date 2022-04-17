import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sangeetgears/common_widget/AppBarWidget.dart';
import 'package:sangeetgears/common_widget/BottomNavBarWidget.dart';
import 'package:sangeetgears/common_widget/DrawerWidget.dart';
import 'package:sangeetgears/screens/HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
          fontFamily: 'Roboto',
          primaryColor: Colors.white,
          primaryColorDark: Colors.white,
          backgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
    );
  }
}

int currentIndex = 0;

void navigateToScreens(int index) {
  currentIndex = index;
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageNewState createState() => _MyHomePageNewState();
}

class _MyHomePageNewState extends State<MyHomePage> {
  final List<Widget> viewContainer = [HomeScreen(), HomeScreen()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: appBarWidget(context),
        drawer: DrawerWidget(),
        body: IndexedStack(
          index: currentIndex,
          children: viewContainer,
        ),
        bottomNavigationBar: BottomNavBarWidget(),
      ),
    );
  }
}
