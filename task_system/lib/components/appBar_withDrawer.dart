import 'dart:js';

import 'package:flutter/material.dart';

import '../sizes/create_MainTask_Sizes.dart';

PreferredSizeWidget myAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(appBarHeight(context)),
    child: AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'CBS Task System',
        style: TextStyle(
          fontSize: appBarFont(context),
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

var myDrawer = (BuildContext context) => Drawer(
  width: drawerWidth(context),
  backgroundColor: Colors.grey[300],
  child: const Column(children: [
    ListTile(
      leading: Icon(Icons.home),
      title: Text('D A S H B O A R D'),
    ),
    ListTile(
      leading: Icon(Icons.settings),
      title: Text('T A S K S'),
    ),
    ListTile(
      leading: Icon(Icons.person),
      title: Text('P R O F I L E'),
    ),
    ListTile(
      leading: Icon(Icons.message_rounded),
      title: Text('C H A T'),
    ),
  ]),
);
