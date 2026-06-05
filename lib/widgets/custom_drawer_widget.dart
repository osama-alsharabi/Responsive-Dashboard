import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_item_list_view_widget.dart';
import 'package:responsive_dashboard/widgets/drawer_footer_widget.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile_widget.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 40)),
            SliverToBoxAdapter(
              child: UserInfoListTileWidget(
                userInfoModel: UserInfoModel(
                  image: AppAssets.imagesAvatar1,
                  name: 'Lekan Okeowo',
                  email: 'demo@gmail.com',
                ),
              ),
            ),
            CustomDrawerItemListViewWidget(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: DrawerFooterWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
