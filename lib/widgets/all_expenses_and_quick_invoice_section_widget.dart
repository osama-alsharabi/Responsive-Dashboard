import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_widget.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_widget.dart';

class AllExpensesAndQuickInvoiceSectionWidget extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        AllExpensesWidget(),
        SizedBox(height: 24),
        QuickInvoiceWidget(),
        SizedBox(height: 32),
      ],
    );
  }
}
