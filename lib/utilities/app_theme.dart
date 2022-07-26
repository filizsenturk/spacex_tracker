import 'package:flutter/material.dart';
import 'package:spacex_tracker/utilities/colors.dart';

class AppTheme {
  const AppTheme._();

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.lightPrimaryColor,
    backgroundColor: AppColors.lightModeBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: IconThemeData(
      color: AppColors.lightIconColor,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.darkPrimaryColor,
    ),
    errorColor: AppColors.lightErrorColor,
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.darkPrimaryColor,
    backgroundColor: AppColors.darkModeBackgroundColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.darkPrimaryColor,
    ),
    iconTheme: IconThemeData(
      color: AppColors.darkIconColor,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    errorColor: AppColors.darkErrorColor,
  );

  static ThemeData light() {
    return lightTheme;
  }

  static ThemeData dark() {
    return darkTheme;
  }
}

extension ThemeExtras on ThemeData {

  Color get homeScreenBackgroundColor => this.brightness == Brightness.light
      ? AppColors.lightHomeScreenBackgroundColor
      : AppColors.darkHomeScreenBackGroundColor;

  Color get bottomNavBarBackgroundColor => this.brightness == Brightness.light
      ? AppColors.lightBottomNavBarBackgroundColor
      : AppColors.darkBottomNavBarBackgroundColor;

  Color get homeCardBackgrounColor => this.brightness == Brightness.light
      ? AppColors.lightHomeCardBackgroundColor
      : AppColors.darkHomeCardBackgroundColor;

  Color get homeCardBorderColor => this.brightness == Brightness.light
      ? AppColors.lightHomeCardBorderColor
      : AppColors.darkHomeCardBorderColor;

  Color get appBarBackgroundColor => this.brightness == Brightness.light
      ? AppColors.lightHomeCardBorderColor
      : AppColors.darkHomeCardBorderColor;



}
