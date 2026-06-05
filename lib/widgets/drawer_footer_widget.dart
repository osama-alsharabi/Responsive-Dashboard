import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerFooterWidget extends StatelessWidget {
  const DrawerFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        SizedBox(height: 20),
        DrawerItem(
          drawerItemModel: DrawerItemModel(
            image: AppAssets.iconsSetting,
            title: "Setting system",
          ),
        ),
        DrawerItem(
          drawerItemModel: DrawerItemModel(
            image: AppAssets.iconsLogout,
            title: "Logout account",
          ),
        ),
        SizedBox(height: 48),
      ],
    );
  }
}
