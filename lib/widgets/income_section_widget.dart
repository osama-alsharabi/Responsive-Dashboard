import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_container_background_widget.dart';
import 'package:responsive_dashboard/widgets/income_chart_section_widget.dart';
import 'package:responsive_dashboard/widgets/income_header_widget.dart';

class IncomeSectionWidget extends StatelessWidget {
  const IncomeSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackgroudWidget(
      child: Column(
        children: [
          IncomeHeaderWidget(),
          SizedBox(height: 16),
          IncomeChartSectionWidget(),
        ],
      ),
    );
  }
}
