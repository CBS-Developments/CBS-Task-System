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