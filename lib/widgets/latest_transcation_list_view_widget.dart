import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile_widget.dart';

class LatestTransctionListViewWidget extends StatefulWidget {
  const LatestTransctionListViewWidget({super.key});

  @override
  State<LatestTransctionListViewWidget> createState() =>
      _LatestTransctionListViewWidgetState();
}

class _LatestTransctionListViewWidgetState
    extends State<LatestTransctionListViewWidget> {
  final List<UserInfoModel> userInfoList = [
    const UserInfoModel(
      image: AppAssets.imagesAvatar1,
      name: "Madrani Andi",
      email: "Madraniadi20@gmail",
    ),
    const UserInfoModel(
      image: AppAssets.imagesAvatar2,
      name: "Josua Nunito",
      email: "Josh Nunito@gmail.com",
    ),
    const UserInfoModel(
      image: AppAssets.imagesAvatar1,
      name: "Madrani Andi",
      email: "Madraniadi20@gmail",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.builder(
        itemCount: userInfoList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTileWidget(userInfoModel: userInfoList[index]),
          );
        },
      ),
    );
  }
}
