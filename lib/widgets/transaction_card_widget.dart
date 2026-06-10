import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/format_number.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionCardWidget extends StatelessWidget {
  final TransactionModel transactionModel;
  const TransactionCardWidget({super.key, required this.transactionModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(
          transactionModel.title,
          style: AppStyles.textStyle16SemiBold(context),
        ),
        subtitle: Text(
          transactionModel.data,
          style: AppStyles.textStyle16Regular(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          "\$${formatNumber(transactionModel.amount)}",
          style: AppStyles.textStyle20SemiBold(context).copyWith(
            color: transactionModel.isWithDrawal
                ? const Color(0xfff3735e)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
