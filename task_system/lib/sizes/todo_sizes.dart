import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double getPageWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getPageHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double mainContHeight(BuildContext context) {
  return (getPageHeight(context) * 0.78) ;
}

double smallBoxHeight(BuildContext context) {
  return (getPageHeight(context) * 0.018) ;
}

double mainContWidth(BuildContext context) {
  return (getPageWidth(context) * 0.78) ;
}