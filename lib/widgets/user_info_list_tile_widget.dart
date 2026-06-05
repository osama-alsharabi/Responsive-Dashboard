import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListTileWidget extends StatelessWidget {
  final UserInfoModel userInfoModel;
  const UserInfoListTileWidget({super.key, required this.userInfoModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(userInfoModel.name, style: AppStyles.textStyle16SemiBold),
        subtitle: Text(
          userInfoModel.email,
          style: AppStyles.textStyle12Regular,
        ),
      ),
    );
  }
}
