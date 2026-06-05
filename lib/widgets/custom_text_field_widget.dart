import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hint;
  const CustomTextFieldWidget({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hint: Text(
          hint,
          style: AppStyles.textStyle16Regular.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        contentPadding: const EdgeInsets.all(20),
        hintStyle: AppStyles.textStyle16Regular.copyWith(
          color: const Color(0xffAAAAAA),
        ),
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(style: BorderStyle.none),
    );
  }
}
