import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transcation_history_section_widget.dart';

class MyCardAndIncomeSectionWidget extends StatelessWidget {
  const MyCardAndIncomeSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        MyCardAndTranscationHistorySectionWidget(),
      ],
    );
  }
}
