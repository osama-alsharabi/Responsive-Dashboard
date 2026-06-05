import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  final Color foregroundColor;
  const CustomButtonWidget({
    super.key,
    required this.title,
    this.backgroundColor,
    required this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
      ),
      onPressed: () {},
      child: Text(
        title,
        style: AppStyles.textStyle18SemiBold.copyWith(color: foregroundColor),
      ),
    );
  }
}
