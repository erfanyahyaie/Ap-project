import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/route/names.dart';
import 'package:untitled/screens/payment_screen.dart';
import 'package:untitled/widgets/Payment_button.dart';
import 'package:untitled/widgets/main_button.dart';

import '../../components/text_style.dart';
import '../../res/dimens.dart';
import '../../res/strings.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/shopping_cart_item.dart';
import '../../widgets/surface_container.dart';
import '../../widgets/welcome_button.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppStrings.basket,
                  style: AppTextStyles.title,
                ),
              )),

          body: Column(
            children: [

              Container(
                margin: EdgeInsets.only(top: Dimens.medium),
                padding: EdgeInsets.all(Dimens.medium),
                width: double.infinity,
                height: size.height*.1,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(0, 3), blurRadius: 3)],
                  color: Colors.white
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: (){},
                        icon: SvgPicture.asset("assets/svg/left_arrow.svg")),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(AppStrings.sendToAddress, style: AppTextStyles.caption,),
                          FittedBox(
                            child: Text(AppStrings.lurem,
                              style: AppTextStyles.caption,

                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(child: ListView.builder(itemBuilder: ((context, index) {
                return ShoppingCartItem(
                  oldPrice: 50000,
                  price: 40000,
                  productTitle: "ساعت کاسیو",
                );
              } ))),
              WelcomeButton(
                buttonText: AppStrings.Payment,
                onTap: PaymentScreen(),
                color: Colors.blue,
                textColor: Colors.white,


              )


              // Container(
              //   height: 50,
              //   width: double.infinity,
              //   color: Colors.blue,
              // ),

            ],
          ),
        )
    );
  }
}



