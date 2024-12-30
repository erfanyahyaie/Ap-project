
import 'package:flutter/material.dart';



import '../res/colors.dart';
import '../res/dimens.dart';

ThemeData lightTheme(){
  return ThemeData(
    brightness: Brightness.light,
    iconTheme: const IconThemeData(color: Colors.black),
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: MaterialStateColor.resolveWith((states){

        if(states.contains(MaterialState.focused)){
          return AppColors.focusedTextField;
        } else {
          return AppColors.unFocusedTextField;
        }

      }),
      contentPadding: EdgeInsets.all(Dimens.medium),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.medium),
        borderSide: BorderSide(color: AppColors.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.medium),
        borderSide: BorderSide(color: AppColors.primary),
      ),
    ),
  );
}