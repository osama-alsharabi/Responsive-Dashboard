import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_text_field_widget.dart';

class CustomTitleTextFieldWidget extends StatelessWidget {
  final String title, hint;
  const CustomTitleTextFieldWidget({
    super.key,
    required this.title,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.textStyle16Medium),
        const SizedBox(height: 12),
        CustomTextFieldWidget(hint: hint),
      ],
    );
  }
}
