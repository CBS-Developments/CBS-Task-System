import 'package:flutter/material.dart';


double getPageWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getPageHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double appBarHeight(BuildContext context) {
  return (getPageHeight(context) * 0.06) ;
}

double appBarFont(BuildContext context) {
  return (getPageWidth(context) * 0.0041) * (getPageHeight(context) * 0.0041);
}

double drawerWidth(BuildContext context) {
  return (getPageWidth(context) * 0.15) ;
}

double sideBarFont(BuildContext context) {
  return (getPageWidth(context) * 0.0040) * (getPageHeight(context) * 0.0040);
}

double iconWeight(BuildContext context) {
  return (getPageWidth(context) * 0.008) ;
}

double smallBoxHeight(BuildContext context) {
  return (getPageHeight(context) * 0.018) ;
}

double drawerButtonWidth(BuildContext context) {
  return (getPageWidth(context) * 0.14) ;
}

double drawerButtonHeight(BuildContext context) {
  return (getPageHeight(context) * 0.05) ;
}

double drawerIconScale(BuildContext context) {
  return (getPageWidth(context) * 0.0045) * (getPageHeight(context) * 0.0045);
}

double drawerMiniWidth(BuildContext context) {
  return (getPageWidth(context) * 0.005) ;
}

double drawerFontLarge(BuildContext context) {
  return (getPageWidth(context) * 0.0038) * (getPageHeight(context) * 0.0038);
}

double drawerIconMargin(BuildContext context) {
  return (getPageWidth(context) * 0.005) ;
}