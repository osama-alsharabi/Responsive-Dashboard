import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceHeaderWidget extends StatelessWidget {
  const QuickInvoiceHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Quick Invoice", style: AppStyles.textStyle20SemiBold),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffFAFAFA),
          ),
          child: const Icon(Icons.add, color: Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
