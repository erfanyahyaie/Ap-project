import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/components/button_style.dart';

import '../components/text_style.dart';


class PaymentButton extends StatelessWidget {
  final String text;
  void Function() onPressed;

  PaymentButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height*.07,
      width: size.width*.75,
      child: ElevatedButton(
        style: AppButtonStyles.mainBttonStyle,
        onPressed: onPressed,
        child: Text(text,style: AppTextStyles.mainButton,),
      ),
    );
  }
}
