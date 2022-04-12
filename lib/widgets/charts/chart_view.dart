import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import

'../../views/chart_view_screen.dart';
class ChartView extends StatefulWidget {
  const ChartView({Key? key}) : super(key: key);

  @override
  State<ChartView> createState() => _RevenueHistoryChartState();
}

class _RevenueHistoryChartState extends State<ChartView> {

  String chartName = "revenueHistory";

  Widget chartType(String text, String chart) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
      child: FlatButton(
        onPressed: () {
          setState(() {
            chartName = chart;
          });
        },
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,  backgroundBlendMode: BlendMode.multiply),

      //color: Colors.white,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(50),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,  backgroundBlendMode: BlendMode.multiply),

            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.055,
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
           // color: Colors.white,
            child: Row(
              children: [
                chartType("Revenue History", "revenueHistory"),
                chartType("Memebership", "membershipChart"),
                chartType("Personal Trainer", "personalTrainer"),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.734,
            height: 2,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.734,
              height: 2,
              color: Colors.black26,
            ),
          ),
          ChartViewScreen(chartName),
        ],
      ),
    );
  }
}
