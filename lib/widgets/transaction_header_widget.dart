import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionHeaderWidget extends StatelessWidget {
  const TransactionHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Transaction History", style: AppStyles.textStyle20SemiBold),
        TextButton(
          onPressed: () {},
          child: Text(
            "See all",
            style: AppStyles.textStyle16Medium.copyWith(
              color: const Color(0xff4EB7F2),
            ),
          ),
        ),
      ],
    );
  }
}
