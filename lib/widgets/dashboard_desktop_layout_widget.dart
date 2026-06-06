import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice_section_widget.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_widget.dart';
import 'package:responsive_dashboard/widgets/my_card_and_income_section_widget.dart';

class DashboardDesktopLayoutWidget extends StatelessWidget {
  const DashboardDesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawerWidget()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: AllExpensesAndQuickInvoiceSectionWidget(),
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(child: MyCardAndIncomeSectionWidget()),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
