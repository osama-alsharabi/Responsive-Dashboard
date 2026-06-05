import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_header_widget.dart';
import 'package:responsive_dashboard/widgets/all_expenses_list_view_widget.dart';
import 'package:responsive_dashboard/widgets/custom_container_background_widget.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackgroudWidget(
      child: Column(
        children: [
          AllExpensesHeaderWidget(),
          SizedBox(height: 16),
          AllExpensesListViewWidget(),
        ],
      ),
    );
  }
}
