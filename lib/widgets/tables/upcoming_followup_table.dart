import 'package:flutter/material.dart';

class UpcomingFollowupTable extends StatelessWidget {
  static bool hasData = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: DataTable(
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
            label: Text("Mobile number"),
          ),
          DataColumn(
            label: Text("Assigned to"),
          ),
          DataColumn(
            label: Text("Call response"),
          ),
          DataColumn(
            label: Text("Deal stage"),
          ),
          DataColumn(
            label: Text("Next followup date & time"),
          ),
        ],
        rows: const [],
      ),
    );

  }
}
