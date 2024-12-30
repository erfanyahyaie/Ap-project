import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/res/Strings.dart';
import 'package:untitled/screens/SingUp_screen.dart';
import 'package:untitled/screens/login_screen.dart';

import '../widgets/custom_scaffold.dart';
import '../widgets/welcome_button.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40
                ),
            child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: AppStrings.sucPayment,
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w600,
                          color: Colors.black
                        )
                      ),
                    ]
                  ),
                )),
          )),
        ],
      ),
    );
  }
}
