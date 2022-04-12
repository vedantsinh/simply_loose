

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class RevenueHistoryChart extends StatelessWidget {
  const RevenueHistoryChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [Colors.deepPurpleAccent, Colors.purpleAccent];
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          backgroundBlendMode: BlendMode.multiply),
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.7,
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Expanded(
        child: LineChart(
          LineChartData(
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1,
                  getTitlesWidget: (value, meta) {
                    switch (value.toInt()) {
                      case 0:
                        return const Text("Jan");
                      case 1:
                        return const Text("Feb");
                      case 2:
                        return const Text("March");
                      case 3:
                        return const Text("April");
                      case 4:
                        return const Text("May");
                      case 5:
                        return const Text("Jun");
                      case 6:
                        return const Text("July");
                      case 7:
                        return const Text("August");
                      case 8:
                        return const Text("September");
                      case 9:
                        return const Text("October");
                      case 10:
                        return const Text("Navemeber");
                      case 11:
                        return const Text("December");
                    }
                    return const Text("");
                  },
                ),
              ),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              topTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: true,interval: 1),
              ),
            ),
            backgroundColor: Colors.deepPurpleAccent,
            maxX: 12,
            maxY: 11,
            minY: 0,
            minX: 0,
            lineTouchData: LineTouchData(handleBuiltInTouches: true),
            borderData: FlBorderData(show: true, border: Border.all(width: 2)),
            lineBarsData: [
              LineChartBarData(
                isCurved: true,
                barWidth: 4,
                belowBarData: BarAreaData(
                  show: true,
                  color: Colors.purpleAccent,
                ),
                show: true,
                shadow: const Shadow(
                    blurRadius: 7, offset: Offset(2, 4), color: Colors.blue),
                spots: [
                  const FlSpot(0, 2),
                  const FlSpot(1, 3),
                  const FlSpot(3, 5),
                  const FlSpot(4, 6),
                  const FlSpot(8, 6),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
