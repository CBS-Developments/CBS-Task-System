
import 'package:flutter/material.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';

class TableBox extends StatelessWidget {
  final List<DataRow> generateRows;
  final height;
  TableBox({Key? key, required this.generateRows, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: tableBoxWidth(context),
      height: height,
      color: Colors.white,
      child: SingleChildScrollView(
        child: DataTable(columns: [
          DataColumn(
            label: Text(
              'Task',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: tableTextFont(context)),
            ),
          ),
          DataColumn(
            label: Text('Start Date',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: tableTextFont(context))),
          ),
          DataColumn(
            label: Text('End Date',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: tableTextFont(context))),
          ),
          DataColumn(
            label: Text('Description',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: tableTextFont(context))),
          ),
          DataColumn(
            label: Text('Status',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: tableTextFont(context))),
          ),
          DataColumn(
            label: Text(''),
          ),
        ], rows: generateRows),
      ),
    );
  }
}
