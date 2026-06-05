import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/format_number.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header_widget.dart';

class AllExpensesItemWidget extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;
  final bool isBalance;
  const AllExpensesItemWidget({
    super.key,
    required this.allExpensesItemModel,
    this.isBalance = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: isBalance ? const Color(0xff4EB7F2) : null,
        border: Border.all(
          color: isBalance ? const Color(0xff4EB7F2) : const Color(0XFFF1F1F1),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeaderWidget(
            isBalance: isBalance,
            image: allExpensesItemModel.image,
          ),
          const SizedBox(height: 34),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.textStyle16SemiBold.copyWith(
              color: isBalance ? Colors.white : null,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.textStyle14Regular.copyWith(
              color: isBalance ? Colors.white : null,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "\$${formatNumber(allExpensesItemModel.balance)}",
            style: AppStyles.textStyle24SemiBold.copyWith(
              color: isBalance ? Colors.white : null,
            ),
          ),
        ],
      ),
    );
  }
}
