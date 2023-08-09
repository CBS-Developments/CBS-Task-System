import 'package:flutter/cupertino.dart';

import 'create_MainTask_Sizes.dart';

double myTaskRightBoxHeight(BuildContext context) {
  return (getPageHeight(context) * 0.78) ;
}

double myTaskRightWidth(BuildContext context) {
  return (getPageWidth(context) * 0.25) ;
}

double miniCommentBoxWidth(BuildContext context) {
  return (getPageWidth(context) * 0.22) ;
}

double miniAddCommentBoxWidth(BuildContext context) {
  return (getPageWidth(context) * 0.215) ;
}

double miniAddCommentBoxHeight(BuildContext context) {
  return (getPageHeight(context) * 0.11) ;
}

double miniIconButtonScale(BuildContext context) {
  return (getPageWidth(context) * 0.006) * (getPageHeight(context) * 0.006);
}