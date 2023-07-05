import 'package:flutter/material.dart';

double getPageWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getPageHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getXLBoxHeight(BuildContext context){
  return (MediaQuery.of(context).size.height)*0.075;
}

double getFontXXXL(BuildContext context) {
  return (getPageWidth(context) * 0.0073) * (getPageHeight(context) * 0.0073);
}

double imageContWidth(BuildContext context) {
  return (getPageWidth(context) * 0.5) ;
}

double imageContHeight(BuildContext context) {
  return (getPageHeight(context) * 0.7) ;
}


