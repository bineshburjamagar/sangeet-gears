import 'package:flutter/material.dart';
import 'package:sangeetgears/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        navigateToScreens(index);
      });
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          // ignore: deprecated_member_use
          title: Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          // ignore: deprecated_member_use
          title: Text(
            'Cart',
            style: TextStyle(color: Colors.black),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.signOutAlt),
          // ignore: deprecated_member_use
          title: Text(
            'Exit',
            style: TextStyle(color: Color(0xFF545454)),
          ),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.orange,
      onTap: _onItemTapped,
    );
  }
}
