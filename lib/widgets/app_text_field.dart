import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/components/extention.dart';

import '../components/text_style.dart';
import '../res/dimens.dart';


class AppTextField extends StatelessWidget {
  final String label;
  final String prefixLabel;
  final String hint;
  final TextEditingController controller;
  final Widget icon;
  final TextAlign textAlign;
  final TextInputType? inputType;

  const AppTextField(
    {
    required this.label,
    required this.hint,
    required this.controller,
    this.icon = const SizedBox(),
    this.prefixLabel = '',
    this.textAlign = TextAlign.center,
    this.inputType
    }

  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.all(Dimens.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: size.width*.75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(prefixLabel,style: AppTextStyles.title,),
                  Text(label,style: AppTextStyles.title,),
                ],
              ),
            ),
            Dimens.medium.height,
            SizedBox(
              height: size.height*.07,
              width: size.width*.75,
              child: TextField(
                textAlign: textAlign,
                controller: controller,
                keyboardType: inputType,
                decoration: InputDecoration(
                  hintStyle: AppTextStyles.hint,
                  hintText: hint,
                  prefixIcon: icon
                ),
              ),
            )

          ],
        ),
    );
  }
}
