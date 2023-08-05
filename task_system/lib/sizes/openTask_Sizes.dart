import 'package:flutter/cupertino.dart';

import 'create_MainTask_Sizes.dart';

double middleWidth(BuildContext context) {
  return (getPageWidth(context) * 0.55) ;
}

double greenRightWidth(BuildContext context) {
  return (getPageWidth(context) * 0.3) ;
}

double datewithTimeFont(BuildContext context) {
  return (getPageWidth(context) * 0.0037) * (getPageHeight(context) * 0.0037);
}

double smallestBoxHeight(BuildContext context) {
  return (getPageHeight(context) * 0.005) ;
}