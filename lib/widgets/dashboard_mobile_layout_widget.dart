import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice_section_widget.dart';
import 'package:responsive_dashboard/widgets/my_card_and_income_section_widget.dart';

class DashboardMobileLayoutWidget extends StatelessWidget {
  const DashboardMobileLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            AllExpensesAndQuickInvoiceSectionWidget(),
            MyCardAndIncomeSectionWidget(),
          ],
        ),
      ),
    );
  }
}
