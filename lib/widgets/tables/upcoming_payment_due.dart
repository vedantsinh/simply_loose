import 'package:flutter/material.dart';


class UpcomingPaymentDue extends StatelessWidget {
  const UpcomingPaymentDue({Key? key}) : super(key: key);

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
            label: Text("Membership Name"),
          ),
          DataColumn(
            label: Text("Due date"),
          ),
          DataColumn(
            label: Text("Due amount"),
          ),
        ],
        rows: const [
          DataRow(
            cells:  [
              DataCell(Text("Rajkumar Somani")),
              DataCell(Text("90234234232")),
              DataCell(Text("Level 2")),
              DataCell(Text("10 Aug 2018")),
              DataCell(Text("15000")),
            ],
          ),
          DataRow(
            cells:  [
              DataCell(Text("Chetan Vagahasiya")),
              DataCell(Text("9234524232")),
              DataCell(Text("Level 1")),
              DataCell(Text("26 Feb 2019")),
              DataCell(Text("1000")),
            ],
          ),
          DataRow(
            cells:  [
              DataCell(Text("Ritika Tulsian")),
              DataCell(Text("8324572853")),
              DataCell(Text("Level 1")),
              DataCell(Text("26 Feb 2019")),
              DataCell(Text("500")),
            ],
          ),
        ],
      ),
    );
  }
}

