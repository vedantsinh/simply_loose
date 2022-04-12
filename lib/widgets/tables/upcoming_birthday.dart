import 'package:flutter/material.dart';

class UpcomingBirthday extends StatelessWidget {
  const UpcomingBirthday({Key? key}) : super(key: key);

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
            label: Text("Member Name"),
          ),
          DataColumn(
            label: Text("Mobile Number"),
          ),
          DataColumn(
            label: Text("Birth Date"),
          ),
        ],
        rows: const [
          DataRow(
            cells:  [
              DataCell(Text("Rajkumar Somani")),
              DataCell(Text("90234234232")),
              DataCell(Text("10 Apr 1960")),
            ],
          ),
          DataRow(
            cells:  [
              DataCell(Text("Chetan Vagahasiya")),
              DataCell(Text("9234524232")),
              DataCell(Text("10 Apr 1974")),
            ],
          ),
          DataRow(
            cells:  [
              DataCell(Text("Ritika Tulsian")),
              DataCell(Text("8324572853")),
              DataCell(Text("11 Apr 1995")),
            ],
          ),
        ],
      ),
    );
  }
}
