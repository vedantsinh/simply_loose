import 'package:flutter/material.dart';

class ExpiredMembership extends StatelessWidget {

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
            label: Text("Appointment Type"),
          ),
          DataColumn(
            label: Text("Appointment Date and Time"),
          ),
          DataColumn(
            label: Text("Appointment with"),
          ),
          DataColumn(
            label: Text("Note"),
          ),
        ],
        rows: [],
      ),
    );
  }
}

