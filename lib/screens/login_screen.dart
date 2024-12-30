import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled/components/extention.dart';
import 'package:untitled/res/Strings.dart';
import 'package:untitled/res/dimens.dart';
import 'package:untitled/widgets/main_button.dart';

import '../route/names.dart';
import '../widgets/app_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

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
              AppTextField(label: AppStrings.UserName,
                  hint:"نام کاربری خود را وارد کنید",
                  controller: _controllercontroller),
              AppTextField(label: AppStrings.pass,
                  hint:"رمز عبور خود را وارد کنید",
                  controller: _controllercontroller),
              MainButton(
                text:AppStrings.Login ,
                onPressed: () =>
                    Navigator.pushNamed(context, Screens.mainScreen)),


            ],
          )),
    ));
  }
}
