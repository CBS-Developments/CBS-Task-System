import 'package:flutter/material.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';

class TableBox extends StatelessWidget {
  const TableBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: tableBoxWidth(context),
      height: tableBoxHeight(context),
      color: Colors.white,
      child: SingleChildScrollView(
        child: DataTable(
            columns: [
              DataColumn(
                label: Text('Task'),
              ),
              DataColumn(
                label: Text('Start Date'),
              ),
              DataColumn(
                label: Text('End Date'),
              ),
              DataColumn(
                label: Text('Description'),
              ),
              DataColumn(
                label: Text('Status'),
              ),
              DataColumn(
                label: Text(''),
              ),
            ],
            rows: [

              DataRow(cells: [
                DataCell(Text('Dinethri Regular Task - April 2023')),
                DataCell(Text('Dec 4, 2019 21:42')),
                DataCell(Text('Dec 7, 2019 23:26')),
                DataCell(Text('Task System Figma UI')),
                DataCell(Text('Completed')),
                DataCell(Row(
                  children: [
                    TextButton(onPressed: () {  },
                    child: Text('Edit',style: TextStyle(color: Colors.black),)),

                    TextButton(onPressed: () {  },
                        child: Text('Remove',style: TextStyle(color: Colors.redAccent),)),
                  ],
                )),
              ]),

              DataRow(cells: [
                DataCell(Text('Dinethri Regular Task - April 2023')),
                DataCell(Text('Dec 4, 2019 21:42')),
                DataCell(Text('Dec 7, 2019 23:26')),
                DataCell(Text('Task System Figma UI')),
                DataCell(Text('Completed')),
                DataCell(Row(
                  children: [
                    TextButton(onPressed: () {  },
                        child: Text('Edit',style: TextStyle(color: Colors.black),)),

                    TextButton(onPressed: () {  },
                        child: Text('Remove',style: TextStyle(color: Colors.redAccent),)),
                  ],
                )),
              ]),

              DataRow(cells: [
                DataCell(Text('Dinethri Regular Task - April 2023')),
                DataCell(Text('Dec 4, 2019 21:42')),
                DataCell(Text('Dec 7, 2019 23:26')),
                DataCell(Text('Task System Figma UI')),
                DataCell(Text('Completed')),
                DataCell(Row(
                  children: [
                    TextButton(onPressed: () {  },
                        child: Text('Edit',style: TextStyle(color: Colors.black),)),

                    TextButton(onPressed: () {  },
                        child: Text('Remove',style: TextStyle(color: Colors.redAccent),)),
                  ],
                )),
              ]),

              DataRow(cells: [
                DataCell(Text('Dinethri Regular Task - April 2023')),
                DataCell(Text('Dec 4, 2019 21:42')),
                DataCell(Text('Dec 7, 2019 23:26')),
                DataCell(Text('Task System Figma UI')),
                DataCell(Text('Completed')),
                DataCell(Row(
                  children: [
                    TextButton(onPressed: () {  },
                        child: Text('Edit',style: TextStyle(color: Colors.black),)),

                    TextButton(onPressed: () {  },
                        child: Text('Remove',style: TextStyle(color: Colors.redAccent),)),
                  ],
                )),
              ]),

              DataRow(cells: [
                DataCell(Text('Dinethri Regular Task - April 2023')),
                DataCell(Text('Dec 4, 2019 21:42')),
                DataCell(Text('Dec 7, 2019 23:26')),
                DataCell(Text('Task System Figma UI')),
                DataCell(Text('Completed')),
                DataCell(Row(
                  children: [
                    TextButton(onPressed: () {  },
                        child: Text('Edit',style: TextStyle(color: Colors.black),)),

                    TextButton(onPressed: () {  },
                        child: Text('Remove',style: TextStyle(color: Colors.redAccent),)),
                  ],
                )),
              ]),

              DataRow(cells: [
                DataCell(Text('Dinethri Regular Task - April 2023')),
                DataCell(Text('Dec 4, 2019 21:42')),
                DataCell(Text('Dec 7, 2019 23:26')),
                DataCell(Text('Task System Figma UI')),
                DataCell(Text('Completed')),
                DataCell(Row(
                  children: [
                    TextButton(onPressed: () {  },
                        child: Text('Edit',style: TextStyle(color: Colors.black),)),

                    TextButton(onPressed: () {  },
                        child: Text('Remove',style: TextStyle(color: Colors.redAccent),)),
                  ],
                )),
              ])
            ]),
      ),
    );
  }
}
