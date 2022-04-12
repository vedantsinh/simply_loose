import 'package:flutter/material.dart';

class TodayClasses extends StatelessWidget {
  const TodayClasses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: DataTable(
        horizontalMargin: 100,
        dividerThickness: 1,
        border: const TableBorder(
          horizontalInside: BorderSide(
            width: 1,
            color: Colors.black26,
          ),
        ),
        columns: const [
          DataColumn(
            label: Text("Class Name"),
          ),
          DataColumn(
            label: Text("Employee Name"),
          ),
          DataColumn(
            label: Text("Start Time"),
          ),
          DataColumn(
            label: Text("End Time"),
          ),
          DataColumn(
            label: Text("Participant"),
          ),
        ],
        rows: const [
          DataRow(
            cells: [
              DataCell(Text("Group-Ex")),
              DataCell(Text("Adan Brown")),
              DataCell(Text("4:00 PM")),
              DataCell(Text("5:00 PM")),
              DataCell(Text("0/25")),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text("Swimming")),
              DataCell(Text("Adan Brown")),
              DataCell(Text("8:00 AM")),
              DataCell(Text("9:00 AM")),
              DataCell(Text("0/20")),
            ],
          ),
        ],
      ),
    );
  }
}
