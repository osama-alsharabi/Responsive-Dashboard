import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChartWidget extends StatelessWidget {
  const IncomeChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1.3, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          radius: 25,
          value: 40,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          value: 25,
          color: const Color(0xff4EB7F2),
          showTitle: false,
          radius: 25,
        ),
        PieChartSectionData(
          value: 20,
          color: const Color(0xff064061),
          showTitle: false,
          radius: 25,
        ),
        PieChartSectionData(
          value: 22,
          color: const Color(0xffE2DECD),
          showTitle: false,
          radius: 25,
        ),
      ],
    );
  }
}
