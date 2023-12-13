import 'package:flutter/material.dart';

class TColors {
  TColors._();
  //Basic colors
  static const Color primaryColor = Color(0xFF4b68ff);
  static const Color secondaryColor = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);
  static const Color white = Colors.white;

  //Text colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6c7570);
  static const Color textWhite = Colors.white;

  //Background colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaeyBackground = Color(0xFFF3F5FF);

  //bACKGROUND CONTAINERCOLOR
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = TColors.white.withOpacity(0.1);

  //Button colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6c7570);
  static const Color buttonDisabled = Color(0xFFc4c4c4);

  //Border colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color bORDERSecondary = Color(0xFFE6E6E6);

  //Gradient colors
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [Color(0xffff9a9e), Color(0xfffad0c4), Color(0xfffad0c4)]);

  //ERROR AND VALIDATION COLORS
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xfff1976d2);

  //NEUTRAL SHADES
  static const Color black = Colors.black;
  static const Color darkERGrey = Color(0xFF4F4F4F);
  static const Color darkerGrey = Color(0xFFE0E0E0);

  //Devider Color
  static const Color grey=Colors.grey;
}
