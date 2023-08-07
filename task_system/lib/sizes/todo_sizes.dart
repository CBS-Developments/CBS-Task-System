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

double mainContWidth(BuildContext context) {
  return (getPageWidth(context) * 0.78) ;
}

double smallBoxHeight(BuildContext context) {
  return (getPageHeight(context) * 0.018) ;
}

double tableContHeight(BuildContext context) {
  return (getPageHeight(context) * 0.78) ;
}

double tableContWidth(BuildContext context) {
  return (getPageWidth(context) * 0.48) ;
}

double calContWidth(BuildContext context) {
  return (getPageWidth(context) * 0.18) ;
}

double calBoxHeight1(BuildContext context) {
  return (getPageHeight(context) * 0.555) ;
}

double calBoxWidth1(BuildContext context) {
  return (getPageWidth(context) * 0.25) ;
}