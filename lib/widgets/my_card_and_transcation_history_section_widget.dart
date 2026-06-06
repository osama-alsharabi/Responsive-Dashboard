import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_container_background_widget.dart';
import 'package:responsive_dashboard/widgets/my_card_widget.dart';

class MyCardAndTranscationHistorySectionWidget extends StatelessWidget {
  const MyCardAndTranscationHistorySectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackgroudWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My Card", style: AppStyles.textStyle20SemiBold),
          SizedBox(height: 20),
          MyCardWidget(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
