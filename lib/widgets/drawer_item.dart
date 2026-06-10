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
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: isSelected
            ? AppStyles.textStyle16Bold(context)
            : AppStyles.textStyle16Regular(context),
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
