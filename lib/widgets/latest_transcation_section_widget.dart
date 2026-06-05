import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/latest_transcation_list_view_widget.dart';

class LatestTranscationSectionWidget extends StatelessWidget {
  const LatestTranscationSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Transaction", style: AppStyles.textStyle16Medium),
        SizedBox(height: 12),
        LatestTransctionListViewWidget(),
      ],
    );
  }
}
