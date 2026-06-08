import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/custom_app_bar_widget.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_widget.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout_widget.dart';
import 'package:responsive_dashboard/widgets/dashboard_mobile_layout_widget.dart';
import 'package:responsive_dashboard/widgets/dashboard_tablet_layout_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawerWidget(),
      appBar: MediaQuery.sizeOf(context).width <= 600
          ? const CustomAppBarWidget()
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const DashboardMobileLayoutWidget(),
        tabletLayout: (context) => const DashboardTabletLayoutWidget(),
        desktopLayout: (context) => const DashboardDesktopLayoutWidget(),
      ),
    );
  }
}
