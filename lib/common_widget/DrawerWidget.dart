import 'package:flutter/material.dart';
import 'package:sangeetgears/main.dart';
import 'package:sangeetgears/components/AppSignIn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createDrawerHeader(),
            _createDrawerItem(
                icon: Icons.home,
                text: 'Home',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    )),
            _createDrawerItem(
                icon: FontAwesomeIcons.user,
                text: 'Sign In',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AppSignIn()),
                    )),
            _createDrawerItem(
              icon: FontAwesomeIcons.boxOpen,
              text: 'My Orders',
            ),
            _createDrawerItem(
              icon: FontAwesomeIcons.questionCircle,
              text: 'FAQs',
            ),
          ],
        ),
      ),
    );
  }
}

Widget _createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Stack(children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Text(
              'WELCOME TO SANGEET GEARS',
              style: TextStyle(
                fontFamily: 'KaushanScript',
                color: Colors.black,
                //fontSize: 10,
              ),
            ),
          ),
        ),
      ]));
}

Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: Color(0xFF808080),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            text,
            style: TextStyle(color: Color(0xFF484848)),
          ),
        )
      ],
    ),
    onTap: onTap,
  );
}
