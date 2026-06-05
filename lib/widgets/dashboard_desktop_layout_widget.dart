import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/all_expenses_widget.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_widget.dart';

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
          child: Column(children: [SizedBox(height: 40), AllExpensesWidget()]),
        ),
        Expanded(flex: 2, child: SizedBox()),
      ],
    );
  }
}
