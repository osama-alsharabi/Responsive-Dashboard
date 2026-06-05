import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListTileWidget extends StatelessWidget {
  const UserInfoListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(AppAssets.imagesAvatar1),
        title: const Text("Lekan Okeowo", style: AppStyles.textStyle16SemiBold),
        subtitle: const Text(
          "demo@gmail.com",
          style: AppStyles.textStyle12Regular,
        ),
      ),
    );
  }
}
