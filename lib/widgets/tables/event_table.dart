import 'package:flutter/material.dart';

class EventTable extends StatefulWidget {
  const EventTable({Key? key}) : super(key: key);

  @override
  State<EventTable> createState() => _EventTableState();
}

class _EventTableState extends State<EventTable> {

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
