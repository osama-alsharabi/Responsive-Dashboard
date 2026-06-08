import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_widget.dart';
import 'package:responsive_dashboard/widgets/dashboard_mobile_layout_widget.dart';

class DashboardTabletLayoutWidget extends StatelessWidget {
  const DashboardTabletLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawerWidget()),
        SizedBox(width: 24),
        Expanded(flex: 2, child: DashboardMobileLayoutWidget()),
        SizedBox(width: 24),
      ],
    );
  }
}
