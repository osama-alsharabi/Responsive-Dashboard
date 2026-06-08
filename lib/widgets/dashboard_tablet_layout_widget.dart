import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice_section_widget.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_widget.dart';
import 'package:responsive_dashboard/widgets/my_card_and_income_section_widget.dart';

class DashboardTabletLayoutWidget extends StatelessWidget {
  const DashboardTabletLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawerWidget()),
        SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesAndQuickInvoiceSectionWidget(),
                MyCardAndIncomeSectionWidget(),
              ],
            ),
          ),
        ),
        SizedBox(width: 24),
      ],
    );
  }
}
