import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  const AdaptiveLayoutWidget({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth <= SizeConfig.mobileLayoutSize) {
          return mobileLayout(context);
        } else if (constrains.maxWidth <= SizeConfig.tabletLayoutSize) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
