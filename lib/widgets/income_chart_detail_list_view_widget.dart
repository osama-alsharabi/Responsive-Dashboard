import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeChartDetailsListViewWidget extends StatelessWidget {
  const IncomeChartDetailsListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Row(
                children: [
                  const CircleAvatar(radius: 7),
                  const SizedBox(width: 12),
                  const Text(
                    "Design service",
                    style: AppStyles.textStyle16Regular,
                  ),
                  const Spacer(),
                  Text(
                    "40%",
                    style: AppStyles.textStyle16Medium.copyWith(
                      color: const Color(0xff208CC8),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
