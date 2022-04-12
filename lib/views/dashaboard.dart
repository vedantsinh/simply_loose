import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simplyloose/views/table_widget_view.dart';
import 'package:simplyloose/widgets/UpcomingEventsGrid.dart';
import 'package:simplyloose/widgets/charts/chart_view.dart';
import 'package:simplyloose/widgets/charts/revenue_history_chart.dart';
import 'package:simplyloose/widgets/tables/event_table.dart';

class Dashboard extends StatefulWidget {
  static String route = "/Dashboard";

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int eventNumTest = 0;
  String tableName = "EventTable";

  Widget noDataAvailable() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
      color: Colors.white,
      child: const Center(
        child: Text("No dataavailable"),
      ),
    );
  }

  Widget columnChild(
      double width, double height, double margin, Color color, Widget widget) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, margin, 0, 0),
      width: MediaQuery.of(context).size.width * width,
      height: MediaQuery.of(context).size.height * height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
          backgroundBlendMode: BlendMode.multiply),
      child: Card(
        color: color,
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: widget,
      ),
    );
  }

  Widget buildItem(String eventName, int eventNum, String testName) {
    Random random = new Random();
    int randomRValue = random.nextInt(200);
    int randomGValue = random.nextInt(200);
    int randomBValue = random.nextInt(200);
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        margin: const EdgeInsets.all(7),
        width: MediaQuery.of(context).size.width * 0.2,
        height: MediaQuery.of(context).size.width * 0.042,
        child: Card(
          color: Color.fromRGBO(randomRValue, randomGValue, randomBValue, 1.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: FlatButton(
            onPressed: () {
              setState(() {
                tableName = testName;
              });
            },
            child: Center(
              child: ListTile(
                title: Text(
                  eventName,
                  style: const TextStyle(color: Colors.white),
                ),
                trailing: Text(
                  eventNum.toString(),
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.black38,
      child: SingleChildScrollView(
        child: Column(
          children: [
            columnChild(
              0.8,
              0.2,
              50,
              Colors.white,
              UpcomingEventsGrid(buildItem),
            ),
            columnChild(
              0.8,
              0.4,
              50,
              Colors.white,
              TableWidgetView(tableName),
            ),
            columnChild(
              0.8,
              0.94,
              50,
              Colors.white,
              ChartView(),
            ),
          ],
        ),
      ),
    );
  }
}
