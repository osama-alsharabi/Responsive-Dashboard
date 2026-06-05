import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/all_expenses_widget.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_widget.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_widget.dart';

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
            child: Column(
              children: [
                SizedBox(height: 40),
                AllExpensesWidget(),
                SizedBox(height: 24),
                QuickInvoiceWidget(),
                SizedBox(height: 32),
              ],
            ),
          ),
        ),
        Expanded(flex: 1, child: SizedBox()),
      ],
    );
  }
}
