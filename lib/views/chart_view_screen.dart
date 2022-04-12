import 'package:flutter/material.dart';
import '../widgets/charts/revenue_history_chart.dart';
import '../widgets/charts/membership_chart.dart';
import '../widgets/charts/personal_trainer_chart.dart';

class ChartViewScreen extends StatelessWidget {
  String chartName;
  ChartViewScreen(this.chartName);

  @override
  Widget build(BuildContext context) {

    if (chartName == "revenueHistory") return RevenueHistoryChart();
    if (chartName == "membershipChart") return MembershipChart();
    if (chartName == "personalTrainer") return PersonalTrainerChart();


    return RevenueHistoryChart();
  }
}

