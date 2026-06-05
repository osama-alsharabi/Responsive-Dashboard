import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_widget.dart';

class DashboardDesktopLayoutWidget extends StatelessWidget {
  const DashboardDesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [Expanded(child: CustomDrawerWidget())]);
  }
}
