import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class CustomDrawerItemListViewWidget extends StatelessWidget {
  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(image: AppAssets.iconsDashboard, title: "Dashboard"),
    DrawerItemModel(
      image: AppAssets.iconsMyTransaction,
      title: "My Transaction",
    ),
    DrawerItemModel(image: AppAssets.iconsStatistics, title: "Statistics"),
    DrawerItemModel(
      image: AppAssets.iconsWalletAccount,
      title: "Wallet Account",
    ),
    DrawerItemModel(
      image: AppAssets.iconsMyInvestments,
      title: "My Investments",
    ),
  ];
  const CustomDrawerItemListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: drawerItems.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: DrawerItem(drawerItemModel: drawerItems[index]),
        );
      },
    );
  }
}
