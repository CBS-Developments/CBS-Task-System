import 'package:flutter/material.dart';

double getPageWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getPageHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getXLBoxHeight(BuildContext context){
  return (MediaQuery.of(context).size.height)*0.07;
}

double getFontXXXL(BuildContext context) {
  return (getPageWidth(context) * 0.0073) * (getPageHeight(context) * 0.0073);
}

double getFontXL(BuildContext context) {
  return (getPageWidth(context) * 0.0063) * (getPageHeight(context) * 0.0063);
}

double imageContWidth(BuildContext context) {
  return (getPageWidth(context) * 0.5) ;
}

double imageContHeight(BuildContext context) {
  return (getPageHeight(context) * 0.7) ;
}

double imagePadding(BuildContext context) {
  return (getPageHeight(context) * 0.1) ;
}

double getContHoriMargin(BuildContext context) {
  return (getPageWidth(context) * 0.05) ;
}

double ContWidth(BuildContext context) {
  return (getPageWidth(context) * 0.35) ;
}


double sizeBoxXLHeight(BuildContext context){
  return (MediaQuery.of(context).size.height)*0.04;
}

double sizeBoxLHeight(BuildContext context){
  return (MediaQuery.of(context).size.height)*0.025;
}

double sizeBoxMHeight(BuildContext context){
  return (MediaQuery.of(context).size.height)*0.015;
}

double textFMargin(BuildContext context) {
  return (getPageWidth(context) * 0.0075) ;

}

double textFHeight(BuildContext context) {
  return (getPageHeight(context) * 0.1) ;
}

double textFWidth(BuildContext context) {
  return (getPageWidth(context) * 0.3) ;
}

double getFontL(BuildContext context) {
  return (getPageWidth(context) * 0.0045) * (getPageHeight(context) * 0.0045);
}

double buttonHeight(BuildContext context) {
  return (getPageHeight(context) * 0.06) ;
}

double buttonWidth(BuildContext context) {
  return (getPageWidth(context) * 0.08) ;
}

double buttonFont(BuildContext context) {
  return (getPageWidth(context) * 0.0042) * (getPageHeight(context) * 0.0042);
}

double tileHeight(BuildContext context) {
  return (getPageHeight(context) * 0.08) ;
}

double tileWidth(BuildContext context) {
  return (getPageWidth(context) * 0.14) ;
}

double tileWidth2(BuildContext context) {
  return (getPageWidth(context) * 0.1) ;
}