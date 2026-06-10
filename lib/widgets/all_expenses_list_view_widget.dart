import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_widget.dart';

class AllExpensesListViewWidget extends StatefulWidget {
  const AllExpensesListViewWidget({super.key});

  @override
  State<AllExpensesListViewWidget> createState() =>
      _AllExpensesListViewWidgetState();
}

class _AllExpensesListViewWidgetState extends State<AllExpensesListViewWidget> {
  final List<AllExpensesItemModel> allExpensesItemModeList = [
    const AllExpensesItemModel(
      image: AppAssets.iconsBalance,
      title: "Balance",
      date: "April 2022",
      balance: 20129,
    ),
    const AllExpensesItemModel(
      image: AppAssets.iconsIncome,
      title: "Income",
      date: "April 2022",
      balance: 20129,
    ),
    const AllExpensesItemModel(
      image: AppAssets.iconsExpenses,
      title: "Expenses",
      date: "April 2022",
      balance: 20129,
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: allExpensesItemModeList
          .asMap()
          .entries
          .map(
            (e) => Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: e.key != 2 ? 5 : 0),
                child: GestureDetector(
                  onTap: () {
                    selectedIndex = e.key;
                    setState(() {});
                  },
                  child: AllExpensesItemWidget(
                    isBalance: selectedIndex == e.key,
                    allExpensesItemModel: e.value,
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
