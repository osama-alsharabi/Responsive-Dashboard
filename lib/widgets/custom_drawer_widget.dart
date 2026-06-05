import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile_widget.dart';

class CustomDrawerWidget extends StatelessWidget {
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
  const CustomDrawerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UserInfoListTileWidget(),
        ListView.builder(
          itemCount: drawerItems.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return DrawerItem(drawerItemModel: drawerItems[index]);
          },
        ),
      ],
    );
  }
}
