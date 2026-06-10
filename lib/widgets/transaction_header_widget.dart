import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionHeaderWidget extends StatelessWidget {
  const TransactionHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Transaction History",
          style: AppStyles.textStyle20SemiBold(context),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "See all",
            style: AppStyles.textStyle16Medium(
              context,
            ).copyWith(color: const Color(0xff4EB7F2)),
          ),
        ),
      ],
    );
  }
}
