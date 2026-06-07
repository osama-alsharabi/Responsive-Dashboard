import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/transaction_header_widget.dart';

class TransactionSectionWidget extends StatelessWidget {
  const TransactionSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const TransactionHeaderWidget(),
        const SizedBox(height: 20),
        Text(
          "13 April 2022",
          style: AppStyles.textStyle16Medium.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
