import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile_widget.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [UserInfoListTileWidget()]);
  }
}
