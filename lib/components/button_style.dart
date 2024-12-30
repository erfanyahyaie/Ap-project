import 'package:flutter/material.dart';


import '../res/dimens.dart';

class AppButtonStyles{
  static ButtonStyle mainBttonStyle = ButtonStyle(
    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.medium))
    )
  );
}