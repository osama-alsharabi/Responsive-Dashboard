import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_container_background_widget.dart';
import 'package:responsive_dashboard/widgets/my_card_section_widget.dart';

class MyCardAndTranscationHistorySectionWidget extends StatelessWidget {
  const MyCardAndTranscationHistorySectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackgroudWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [MyCardSectionWidget()],
      ),
    );
  }
}
