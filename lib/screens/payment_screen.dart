import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled/components/extention.dart';
import 'package:untitled/res/Strings.dart';
import 'package:untitled/res/dimens.dart';
import 'package:untitled/screens/main_screen/basket_screen.dart';
import 'package:untitled/screens/success_screen.dart';
import 'package:untitled/widgets/main_button.dart';
import 'package:untitled/widgets/welcome_button.dart';

import '../route/names.dart';
import '../widgets/app_text_field.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({super.key});

  TextEditingController _controllercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Dimens.large.height,
              AppTextField(label: AppStrings.CArtNumber, hint:AppStrings.hintCArtNumber, controller: _controllercontroller),
              AppTextField(label: AppStrings.CVV2, hint:AppStrings.hintCVV2, controller: _controllercontroller),
              AppTextField(label: AppStrings.DateCart, hint:AppStrings.hintDateCart, controller: _controllercontroller),
              AppTextField(label: AppStrings.praymerycode, hint:AppStrings.hintpraymerycode, controller: _controllercontroller),
              Flexible(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      children: [
                        Expanded(
                            child: WelcomeButton(
                              buttonText: AppStrings.Payment,
                              onTap: SuccessScreen(),
                              color: Colors.blue,
                              textColor: Colors.white,
                            )
                        ),
                        Expanded(
                            child: WelcomeButton(
                              buttonText: AppStrings.sour,
                              onTap: BasketScreen(),
                              color: Colors.blue,
                              textColor: Colors.white,
                            )
                        ),
                      ],
                    ),
                  )
              ),


            ],
          )),
    ));
  }
}
