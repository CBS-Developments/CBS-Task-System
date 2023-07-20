

import 'package:flutter/cupertino.dart';

import 'create_MainTask_Sizes.dart';


double appBarHeight(BuildContext context) {
  return (getPageHeight(context) * 0.06) ;
}

double appBarFont(BuildContext context) {
  return (getPageWidth(context) * 0.0041) * (getPageHeight(context) * 0.0041);
}

double appBarIconSize(BuildContext context) {
  return (getPageHeight(context) * 0.031) ;
}

double drawerWidth(BuildContext context) {
  return (getPageWidth(context) * 0.15) ;
}

double rightSideWidth(BuildContext context) {
  return (getPageWidth(context) * 0.85) ;
}

double drawerButtonWidth(BuildContext context) {
  return (getPageWidth(context) * 0.14) ;
}

double drawerButtonHeight(BuildContext context) {
  return (getPageHeight(context) * 0.05) ;
}

double drawerIconHeight(BuildContext context) {
  return (getPageHeight(context) * 0.025) ;
}


double drawerIconSize(BuildContext context) {
  return (getPageWidth(context) * 0.0045) * (getPageHeight(context) * 0.0045);
}

double dashIconHeight(BuildContext context) {
  return (getPageHeight(context) * 0.045) ;
}

double drawerIconWidth(BuildContext context) {
  return (getPageWidth(context) * 0.014) ;
}

double drawerIconMargin(BuildContext context) {
  return (getPageWidth(context) * 0.005) ;
}


double miniBoxHeight(BuildContext context) {
  return (getPageHeight(context) * 0.012) ;
}

double tabBarHeight(BuildContext context) {
  return (getPageHeight(context) * 0.05) ;
}

double tabBarWidth(BuildContext context) {
  return (getPageWidth(context) * 0.83) ;
}

double drawerSizeBoxWidth(BuildContext context) {
  return (getPageWidth(context) * 0.005) ;
}

double filterBoxHeight(BuildContext context) {
  return (getPageHeight(context) * 0.12) ;
}

double filterBoxWidth(BuildContext context) {
  return (getPageWidth(context) * 0.38) ;
}