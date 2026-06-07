import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction_card_widget.dart';

class TransactionHistoryListViewWidget extends StatefulWidget {
  const TransactionHistoryListViewWidget({super.key});

  @override
  State<TransactionHistoryListViewWidget> createState() =>
      _TransactionHistoryListViewWidgetState();
}

class _TransactionHistoryListViewWidgetState
    extends State<TransactionHistoryListViewWidget> {
  final List<TransactionModel> transactionModelList = [
    TransactionModel(
      title: "Cash Withdrawal",
      data: "13 Apr, 2022 at 3:30 PM",
      amount: 2000,
      isWithDrawal: true,
    ),
    TransactionModel(
      title: "Cash Withdrawal",
      data: "13 Apr, 2022 at 3:30 PM",
      amount: 2000,
      isWithDrawal: false,
    ),
    TransactionModel(
      title: "Cash Withdrawal",
      data: "13 Apr, 2022 at 3:30 PM",
      amount: 2000,
      isWithDrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: transactionModelList.length,
      itemBuilder: (context, index) {
        return TransactionCardWidget(
          transactionModel: transactionModelList[index],
        );
      },
    );
  }
}
