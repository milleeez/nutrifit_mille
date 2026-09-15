import 'package:flutter/material.dart';

class AppColors {
  static const green = Color(0xFF16A34A);
  static const darkGreen = Color(0xFF087F3E);
  static const lightGreen = Color(0xFFEAF9F0);
  static const dark = Color(0xFF101828);
  static const gray = Color(0xFF667085);
  static const background = Color(0xFFF8FAFC);
  static const white = Colors.white;
}

class AppStyles {
  static const title = TextStyle(
    fontSize: 38,
    fontWeight: FontWeight.bold,
    color: AppColors.dark,
  );

  static const sectionTitle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.dark,
  );

  static const subtitle = TextStyle(
    fontSize: 17,
    color: AppColors.gray,
    height: 1.5,
  );

  static const cardTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.dark,
  );

  static const cardText = TextStyle(
    fontSize: 14,
    color: AppColors.gray,
  );
}