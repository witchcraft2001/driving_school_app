// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'app_colors.dart';
import 'app_decoration.dart';
import 'app_style.dart';

class ThemeProvider {
  static AppTheme lightTheme = AppTheme(
    AppColors.accent,
    AppColors.primary,
    AppColors.specialColorWhiteBackground,
    AppColors.specialColorMenu,
    AppColors.textMain,
    AppColors.textOptional,
    AppColors.bordersAndIconsWidgetStrokes,
    AppColors.bordersAndIconsIcons,
    AppColors.second,
    AppColors.btnDisabled,
    AppColors.bordersAndIconsStrokeShape,
    AppColors.textSignatures,
    AppColors.textOnSecond,
    AppColors.textOnPrimary,
    AppColors.textContrast,
    AppColors.whiteOnColor,
    AppColors.lightGrey,
    AppColors.success,
    AppColors.danger,
    AppColors.dangerBackground,
    AppColors.info,
    AppColors.warning,
    AppColors.gold,
    AppColors.backgroundDashboardsForms,
    AppColors.backgroundPopupWidget,
    AppColors.backgroundWidgetHeader,
    AppColors.lightBackground,
    AppColors.secondBackground,
    AppColors.divider,
    AppColors.shadow,
    AppColors.predictors1,
    AppColors.predictors2,
    AppColors.predictors3,
    AppColors.predictors4,
    AppColors.predictors5,
    AppColors.predictors6,
    AppColors.predictors7,
    AppColors.predictors8,
    AppColors.predictors9,
    AppColors.predictors10,
    AppColors.predictors11,
    AppColors.color1,
    AppColors.color2,
    AppColors.color3,
    AppColors.color4,
    AppColors.color5,
    AppColors.color6,
    AppColors.color7,
    AppColors.color8,
    AppColors.color9,
    AppColors.color10,
    AppColors.color11,
    AppColors.color12,
    AppColors.color13,
    AppColors.color14,
    AppColors.color15,
    AppColors.color16,
    AppColors.color17,
    AppColors.color18,
    AppColors.color19,
  );

  static AppTheme darkTheme = AppTheme(
    AppDarkColors.accent,
    AppDarkColors.primary,
    AppDarkColors.specialColorWhiteBackground,
    AppDarkColors.specialColorMenu,
    AppDarkColors.textMain,
    AppDarkColors.textOptional,
    AppDarkColors.bordersAndIconsWidgetStrokes,
    AppDarkColors.bordersAndIconsIcons,
    AppDarkColors.second,
    AppColors.btnDisabled,
    AppDarkColors.bordersAndIconsStrokeShape,
    AppDarkColors.textSignatures,
    AppDarkColors.textOnSecond,
    AppDarkColors.textOnPrimary,
    AppDarkColors.textContrast,
    AppDarkColors.whiteOnColor,
    AppDarkColors.lightGrey,
    AppDarkColors.success,
    AppDarkColors.danger,
    AppDarkColors.dangerBackground,
    AppDarkColors.info,
    AppDarkColors.warning,
    AppDarkColors.gold,
    AppDarkColors.backgroundDashboardsForms,
    AppDarkColors.backgroundPopupWidget,
    AppDarkColors.backgroundWidgetHeader,
    AppDarkColors.lightBackground,
    AppDarkColors.secondBackground,
    AppDarkColors.divider,
    AppDarkColors.shadow,
    AppDarkColors.predictors1,
    AppDarkColors.predictors2,
    AppDarkColors.predictors3,
    AppDarkColors.predictors4,
    AppDarkColors.predictors5,
    AppDarkColors.predictors6,
    AppDarkColors.predictors7,
    AppDarkColors.predictors8,
    AppDarkColors.predictors9,
    AppDarkColors.predictors10,
    AppDarkColors.predictors11,
    AppDarkColors.color1,
    AppDarkColors.color2,
    AppDarkColors.color3,
    AppDarkColors.color4,
    AppDarkColors.color5,
    AppDarkColors.color6,
    AppDarkColors.color7,
    AppDarkColors.color8,
    AppDarkColors.color9,
    AppDarkColors.color10,
    AppDarkColors.color11,
    AppDarkColors.color12,
    AppDarkColors.color13,
    AppDarkColors.color14,
    AppDarkColors.color15,
    AppDarkColors.color16,
    AppDarkColors.color17,
    AppDarkColors.color18,
    AppDarkColors.color19,
  );

  static final TextTheme textTheme = TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
  );

  static final TextStyle displayLarge = appFontBold(48);

  static final TextStyle displayMedium = appFontBold(40);

  static final TextStyle displaySmall = appFontBold(36);

  static final TextStyle headlineLarge = appFontBold(32);

  static final TextStyle headlineMedium = appFontBold(26);

  static final TextStyle headlineSmall = appFontRegular(22);

  static final TextStyle titleLarge = appFontSemi(18);

  static final TextStyle titleMedium = appFontSemi(14);

  static final TextStyle titleSmall = appFontSemi(12);

  static final TextStyle labelLarge = appFontRegular(14); //13

  static final TextStyle labelMedium = appFontRegular(13); //12

  static final TextStyle labelSmall = appFontRegular(12); //11

  static final TextStyle bodyLarge = appFontRegular(20);

  static final TextStyle bodyMedium = appFontMedium(16);

  static final TextStyle bodySmall = appFontRegular(14);

  static final TextStyle caption = appFontSemi(13);

  static ThemeData lightThemeData() {
    return ThemeData(
      scaffoldBackgroundColor: lightTheme.backgroundDashboardsForms,
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSwatch(
        accentColor: lightTheme.accent,
      ),
      appBarTheme: AppBarTheme(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
        actionsIconTheme: IconThemeData(
          color: lightTheme.second,
        ),
        foregroundColor: lightTheme.textMain,
        iconTheme: IconThemeData(
          color: lightTheme.second,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightTheme.backgroundWidgetHeader,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: lightTheme.primary,
        unselectedItemColor: lightTheme.textMain,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: textTheme.titleSmall?.copyWith(fontSize: 11.0),
        unselectedLabelStyle: textTheme.titleSmall?.copyWith(fontSize: 11.0),
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: AppDecoration.brBase,
        ),
        backgroundColor: lightTheme.backgroundPopupWidget,
        titleTextStyle: bodyMedium.copyWith(
          color: lightTheme.textMain,
          fontWeight: FontWeight.w700,
        ),
      ),
      primaryColor: lightTheme.primary,
      textTheme: textTheme,
      canvasColor: lightTheme.backgroundDashboardsForms,
      cardColor: lightTheme.specialColorMenu,
      highlightColor: lightTheme.bordersAndIconsStrokeShape,
      inputDecorationTheme: InputDecorationTheme(
        fillColor: lightTheme.specialColorWhiteBackground,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: lightTheme.bordersAndIconsStrokeShape, width: 1.5),
          borderRadius: AppDecoration.brBase,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: lightTheme.bordersAndIconsStrokeShape, width: 1.5),
          borderRadius: AppDecoration.brBase,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: lightTheme.danger),
          borderRadius: AppDecoration.brBase,
        ),
        contentPadding: const EdgeInsets.all(16.0),
        hintStyle:
            bodyMedium.copyWith(fontWeight: AppFontWeight.regular, color: lightTheme.textOptional),
        labelStyle: TextStyle(
          fontWeight: AppFontWeight.medium,
          height: 0.25,
          color: lightTheme.lightGrey.withOpacity(.8),
        ),
        errorStyle: TextStyle(
          fontWeight: AppFontWeight.medium,
          fontSize: 12,
          height: 0.25,
          color: lightTheme.danger,
        ),
      ),
      hintColor: lightTheme.textSignatures,
      dividerColor: lightTheme.divider,
      textSelectionTheme: TextSelectionThemeData(cursorColor: lightTheme.primary),
    );
  }

  static ThemeData darkThemeData() {
    return ThemeData(
      scaffoldBackgroundColor: darkTheme.backgroundDashboardsForms,
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
        ),
        actionsIconTheme: IconThemeData(
          color: darkTheme.second,
        ),
        foregroundColor: darkTheme.textMain,
        iconTheme: IconThemeData(
          color: darkTheme.second,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkTheme.backgroundWidgetHeader,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: darkTheme.primary,
        unselectedItemColor: darkTheme.textMain,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: textTheme.titleSmall?.copyWith(fontSize: 11.0),
        unselectedLabelStyle: textTheme.titleSmall?.copyWith(fontSize: 11.0),
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: AppDecoration.brBase,
        ),
        backgroundColor: darkTheme.backgroundPopupWidget,
        titleTextStyle: bodyMedium.copyWith(
          color: darkTheme.textMain,
          fontWeight: FontWeight.w700,
        ),
      ),
      primaryColor: darkTheme.primary,
      textTheme: textTheme,
      canvasColor: darkTheme.backgroundDashboardsForms,
      cardColor: darkTheme.specialColorMenu,
      highlightColor: darkTheme.bordersAndIconsStrokeShape,
      inputDecorationTheme: InputDecorationTheme(
        fillColor: darkTheme.specialColorWhiteBackground,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: darkTheme.bordersAndIconsStrokeShape, width: 1.5),
          borderRadius: AppDecoration.brBase,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: darkTheme.bordersAndIconsStrokeShape, width: 1.5),
          borderRadius: AppDecoration.brBase,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: darkTheme.danger),
          borderRadius: AppDecoration.brBase,
        ),
        contentPadding: const EdgeInsets.all(16.0),
        hintStyle:
            bodyMedium.copyWith(fontWeight: AppFontWeight.regular, color: darkTheme.textOptional),
        labelStyle: TextStyle(
          fontWeight: AppFontWeight.medium,
          height: 0.25,
          color: darkTheme.lightGrey.withOpacity(.8),
        ),
        errorStyle: TextStyle(
          fontWeight: AppFontWeight.medium,
          fontSize: 12,
          height: 0.25,
          color: darkTheme.danger,
        ),
      ),
      hintColor: darkTheme.textSignatures,
      dividerColor: darkTheme.divider,
      textSelectionTheme: TextSelectionThemeData(cursorColor: darkTheme.primary),
    );
  }
}

extension ThemeExtension on BuildContext {
  AppTheme get theme => MediaQuery.platformBrightnessOf(this) == Brightness.light
      ? ThemeProvider.lightTheme
      : ThemeProvider.darkTheme;
}
