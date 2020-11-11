import 'package:flutter/material.dart';
import 'package:projeto4/pages/home/homePage.dart';

Widget customDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: CircleAvatar(
                backgroundColor: Colors.white70,
                child: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.green,
                  size: 100,
                ))),
        CustomListTile("Logout", Icons.lock, "logout", context, screen: "/")
      ],
    ),
  );
}
