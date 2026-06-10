import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

double getResponsiveFontSize({
  required BuildContext context,
  required double fontSize,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFont = scaleFactor * fontSize;

  return responsiveFont.clamp(fontSize * 0.8, fontSize * 1.2);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.mobileLayoutSize) {
    return width / 600;
  } else if (width < SizeConfig.tabletLayoutSize) {
    return width / 1000;
  } else {
    return width / 1400;
  }
}

abstract class AppStyles {
  static TextStyle textStyle12Regular(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveFontSize(context: context, fontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textStyle14Regular(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveFontSize(context: context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textStyle16Bold(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(context: context, fontSize: 16),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle textStyle16Medium(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(context: context, fontSize: 16),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle textStyle16Regular(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(context: context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textStyle16SemiBold(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(context: context, fontSize: 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textStyle18SemiBold(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      color: const Color(0xffFFFFFF),
      fontSize: getResponsiveFontSize(context: context, fontSize: 18),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textStyle20Medium(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      color: const Color(0xffFFFFFF),
      fontSize: getResponsiveFontSize(context: context, fontSize: 20),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle textStyle20SemiBold(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(context: context, fontSize: 20),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textStyle24SemiBold(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(context: context, fontSize: 24),
      fontWeight: FontWeight.w600,
    );
  }
}
