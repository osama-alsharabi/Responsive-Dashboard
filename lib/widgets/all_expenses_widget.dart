import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_header_widget.dart';
import 'package:responsive_dashboard/widgets/all_expenses_list_view_widget.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          AllExpensesHeaderWidget(),
          SizedBox(height: 16),
          AllExpensesListViewWidget(),
        ],
      ),
    );
  }
}
