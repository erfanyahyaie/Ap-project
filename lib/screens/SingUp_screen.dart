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

class SingupScreen extends StatefulWidget {
  SingupScreen({super.key});

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {
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
              AppTextField(
                  label: AppStrings.UserName,
                  hint: "نام کاربری خود را وارد کنید",
                  controller: _controllercontroller),
              AppTextField(
                  label: AppStrings.gmail,
                  hint: AppStrings.hintEmail,
                  controller: _controllercontroller),
              AppTextField(
                  label: AppStrings.pass,
                  hint: "رمز عبور خود را وارد کنید",
                  controller: _controllercontroller),
              AppTextField(
                  label: AppStrings.cpass,
                  hint: "  رمز عبور خود را تایید کنید",
                  controller: _controllercontroller),
              MainButton(
                  text: AppStrings.SingUP,
                  onPressed: () =>
                      Navigator.pushNamed(context, Screens.mainScreen))
            ],
          )),
    ));
  }
}
