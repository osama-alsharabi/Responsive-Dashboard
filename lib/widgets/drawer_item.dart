import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  final bool isSelected;
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: isSelected
            ? AppStyles.textStyle16Bold
            : AppStyles.textStyle16Regular,
      ),
      trailing: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        height: isSelected ? 1000 : 0,
        width: 3.27,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
