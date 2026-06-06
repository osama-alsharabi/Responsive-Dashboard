import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.only(
          bottom: 27,
          top: 20,
          left: 31,
          right: 24,
        ),
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppAssets.imagesMaskGroup),
          ),
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name card",
              style: AppStyles.textStyle16Regular.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              "Syah Bandi",
              style: AppStyles.textStyle20Medium.copyWith(color: Colors.white),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.topRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "0918 8124 0042 8129",
                      style: AppStyles.textStyle24SemiBold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppStyles.textStyle16Regular.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
