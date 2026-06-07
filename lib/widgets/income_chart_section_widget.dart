import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_chart_detail_list_view_widget.dart';
import 'package:responsive_dashboard/widgets/income_chart_widget.dart';

class IncomeChartSectionWidget extends StatelessWidget {
  const IncomeChartSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: IncomeChartWidget()),
        Expanded(flex: 2, child: IncomeChartDetailsListViewWidget()),
      ],
    );
  }
}
