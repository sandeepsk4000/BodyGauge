import 'package:body_gauge/utils/constants/colors.dart';
import 'package:body_gauge/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:body_gauge/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();
  // Light
  static ThemeData lightTheme = ThemeData(
      textTheme: TTextTheme.LightTextTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      iconTheme: const IconThemeData(color: TColors.black, size: 24),
      scaffoldBackgroundColor: Colors.indigo);

  //dark
  static ThemeData darkTheme = ThemeData(
      textTheme: TTextTheme.DarkTextTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      iconTheme: const IconThemeData(color: TColors.white),
      scaffoldBackgroundColor: TColors.black);
}
