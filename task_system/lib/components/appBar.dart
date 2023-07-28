import 'dart:js';

import 'package:flutter/material.dart';

import '../pages/login_page.dart';
import '../sizes/create_MainTask_Sizes.dart';

PreferredSizeWidget myAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(appBarHeight(context)),
    child: AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Text(
        'CBS Task System',
        style: TextStyle(
          fontSize: appBarFont(context),
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),

      actions: [
        IconButton(
          // iconSize: appBarIconSize(context),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          icon: Icon(
            Icons.logout_outlined,
            color: Colors.grey,
          ),
          tooltip: 'Logout',
        ),
      ],
    ),
  );
}


