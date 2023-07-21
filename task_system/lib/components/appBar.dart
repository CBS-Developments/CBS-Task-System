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
            color: Colors.white,
          ),
          tooltip: 'Logout',
        ),
      ],
    ),
  );
}

// var myDrawer = (BuildContext context) {
//   final double fontSize = sideBarFont(context);
//
//
//   return Drawer(
//     width: drawerWidth(context),
//     backgroundColor: Colors.grey[300],
//     child: Column(children: [
//       ListTile(
//         leading: Icon(
//           Icons.home,
//           color: Colors.black54,),
//         title: Text(
//           'D A S H B O A R D',
//           style: TextStyle(
//             fontSize: fontSize,
//           ),),
//       ),
//       ListTile(
//         leading: Icon(
//         Icons.settings,
//         color: Colors.black54,),
//         title: Text(
//             'T A S K S',
//           style: TextStyle(
//             fontSize: fontSize,
//           ),),
//       ),
//       ListTile(
//         leading: Icon(
//           Icons.person,
//           color: Colors.black54,),
//         title: Text(
//             'P R O F I L E',
//           style: TextStyle(
//             fontSize: fontSize,
//           ),),
//       ),
//       ListTile(
//         leading: Icon(
//           Icons.message_rounded,
//           color: Colors.black54,),
//         title: Text(
//             'C H A T',
//           style: TextStyle(
//             fontSize: fontSize,
//           ),),
//       ),
//     ]),
//   );
//   };

