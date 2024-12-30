import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/components/extention.dart';

import '../components/text_style.dart';
import '../res/dimens.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.productName,
    required this.price,
    this.discount = 0,
    this.time = 0,
    this.oldPrice = 0
  });

  final productName;
  final price;
  final oldPrice;
  final discount;
  final time;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimens.small),
      margin: EdgeInsets.all(Dimens.medium),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.medium),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.grey
              ]
          )
      ),

      width: 200,
      child: Column(
        children: [
          Image.asset("assets/png/unnamed.png"),
          Align(
              alignment: Alignment.centerRight,
              child: Text(productName, style: AppTextStyles.productTitle,)
          ),
          Dimens.medium.height,

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${600000.separateWithComma} تومان ", style: AppTextStyles.title,),
                  Visibility(
                      visible: discount>0?true:false,
                      child: Text("${120000.separateWithComma} تومان ", style: AppTextStyles.oldPrice,)),
                ],
              ),
              Visibility(
                visible: discount>0?true:false,
                child: Container(
                  padding: EdgeInsets.all(Dimens.small*.5),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(60), color: Colors.red),
                  child: Text("$discount %"),
                ),
              )
            ],
          ),
          Dimens.large.height,


          Visibility(
              visible: time>0?true:false,
              child: Container(height: 2, width: double.infinity, color: Colors.blue,)),

          Dimens.medium.height,

          Visibility(
              visible: time>0?true:false,
              child: Text("09:52:48", style: AppTextStyles.productTimer,))

        ],
      ),
    );
  }
}