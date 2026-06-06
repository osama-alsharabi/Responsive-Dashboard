import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/my_card_and_indecator_section_widget.dart';

class MyCardSectionWidget extends StatelessWidget {
  const MyCardSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My Card", style: AppStyles.textStyle20SemiBold),
        SizedBox(height: 20),
        MyCardAndIndecatorSectionWidget(),
        SizedBox(height: 20),
      ],
    );
  }
}
