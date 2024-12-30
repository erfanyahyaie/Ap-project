import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../res/colors.dart';

class AppTextStyles{
  static TextStyle title = TextStyle(
    fontSize: 14,
    color: AppColors.title
  );
  static const TextStyle selectedTab = TextStyle(
      fontSize: 14,
      color: AppColors.title
  );
  static const TextStyle unSelectedTab = TextStyle(
      fontSize: 14,
      color: AppColors.title
  );
  static const TextStyle amazing = TextStyle(
      fontSize: 22,
      color: Colors.red,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle oldPrice = TextStyle(
      fontSize: 12,
      color: Colors.grey,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.lineThrough
  );
  static const TextStyle productTimer = TextStyle(
      fontSize: 15,
      color: Colors.blue,
      fontWeight: FontWeight.w400,
  );
  static const TextStyle productTitle = TextStyle(
      fontSize: 16,
      color: AppColors.title,
      fontWeight: FontWeight.normal
  );
  static const TextStyle caption = TextStyle(
      fontSize: 13,
      color: AppColors.title,
      fontWeight: FontWeight.normal
  );
  static const TextStyle hint = TextStyle(
      fontSize: 14,
      color: AppColors.hint
  );
  static const TextStyle avatarText = TextStyle(
      fontSize: 11,
      color: AppColors.title,
      fontWeight: FontWeight.w400
  );
  static const TextStyle mainButton = TextStyle(
      fontSize: 15,
      color: AppColors.mainButtonText,
      fontWeight: FontWeight.w500
  );
  static const TextStyle primaryThemeTextStyle = TextStyle(
      fontSize: 15,
      color: AppColors.primary,
      fontWeight: FontWeight.w500
  );
  static const TextStyle btmNavActive = TextStyle(
      fontSize: 12,
      color: AppColors.btmNavActive,
      fontWeight: FontWeight.w500
  );
  static const TextStyle btmNavInActive = TextStyle(
      fontSize: 12,
      color: AppColors.btmNavInActive,
      fontWeight: FontWeight.w500
  );

}