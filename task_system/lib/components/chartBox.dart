
import 'package:flutter/material.dart';
import 'package:task_system/colors/appColors.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ChartBox extends StatelessWidget {
  final String centerText;
  final String footerText;
  final  percent;

  const ChartBox({Key? key,
    required this.centerText,
    required this.percent,
    required this.footerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: chartBoxWidth(context),
      height: chartBoxHeight(context),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          // shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: const Offset(4, 4),
              blurRadius: 15,
              spreadRadius: 1,
            ),

            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ]
      ),
      child: CircularPercentIndicator(
        radius: chartRadius(context),
        lineWidth: chartLineWidth(context),
        animation: true,
        percent: percent,
        center: new Text(
          centerText,
          style:
          new TextStyle(fontWeight: FontWeight.bold, fontSize: taskCountFont(context)),
        ),
        footer:
        Padding(
          padding:  EdgeInsets.only(top: navBoxPadding(context)),
          child: Text(
            footerText,
            style:
             TextStyle( fontSize: serTextFont(context)),
          ),
        ),
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: AppColor.complete,
        backgroundColor: AppColor.pending,
      ),

    );
  }
}
