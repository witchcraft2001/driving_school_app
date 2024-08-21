// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'app_colors.dart';

class AppStyle extends TextStyle {
  const AppStyle.font({super.fontSize, FontWeight? fontWeight, Color? color})
      : super(
          inherit: false,
          color: color ?? AppColors.textMain,
          fontWeight: fontWeight ?? AppFontWeight.regular,
          textBaseline: TextBaseline.alphabetic,
        );
}

class AppFontWeight {
  AppFontWeight._();

  static const FontWeight thin = FontWeight.w100;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight semimedium = FontWeight.w500;
  static const FontWeight medium = FontWeight.w600;
  static const FontWeight semibold = FontWeight.w700;
  static const FontWeight bold = FontWeight.w900;
}

TextStyle appFontColor(Color color) => AppStyle.font(color: color);

TextStyle appFontLight(double fontSize, [Color? color]) => AppStyle.font(
      fontSize: fontSize,
      fontWeight: AppFontWeight.light,
      color: color ?? AppColors.textMain,
    );

TextStyle appFontRegular(double fontSize, [Color? color]) => AppStyle.font(
      fontSize: fontSize,
      fontWeight: AppFontWeight.regular,
      color: color ?? AppColors.textMain,
    );

TextStyle appFontSemiMedium(double fontSize, [Color? color]) => AppStyle.font(
      fontSize: fontSize,
      fontWeight: AppFontWeight.semimedium,
      color: color ?? AppColors.textMain,
    );

TextStyle appFontMedium(double fontSize, [Color? color]) => AppStyle.font(
      fontSize: fontSize,
      fontWeight: AppFontWeight.medium,
      color: color ?? AppColors.textMain,
    );

TextStyle appFontSemi(double fontSize, [Color? color]) => AppStyle.font(
      fontSize: fontSize,
      fontWeight: AppFontWeight.semibold,
      color: color ?? AppColors.textMain,
    );

TextStyle appFontBold(double fontSize, [Color? color]) => AppStyle.font(
      fontSize: fontSize,
      fontWeight: AppFontWeight.bold,
      color: color ?? AppColors.textMain,
    );
