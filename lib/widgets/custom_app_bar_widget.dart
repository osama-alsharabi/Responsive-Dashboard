import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWidget({super.key});

  @override
  Size get preferredSize => const Size(double.infinity, 90);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
            const Spacer(),
            Text(
              "Responsive Dashboard",
              style: AppStyles.textStyle20SemiBold.copyWith(
                color: const Color(0xff4EB7F2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
