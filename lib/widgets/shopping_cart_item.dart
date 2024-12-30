
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/components/extention.dart';
import 'package:untitled/widgets/surface_container.dart';

import '../components/text_style.dart';

class ShoppingCartItem extends StatelessWidget {
  ShoppingCartItem({
    super.key,
    required this.oldPrice,
    required this.price,
    required this.productTitle,

  });

  final productTitle;
  final int price;
  final int oldPrice;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return SurfaceContainer(child:
    Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(productTitle, style: AppTextStyles.productTitle,),
              Text(" قیمت: ${price.separateWithComma}تومان", style: AppTextStyles.caption,),
              Text("قیمت با تخفیف ${oldPrice.separateWithComma} تومان", style: AppTextStyles.caption,),
              Divider(),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/svg/delete.svg")),

                  Expanded(child: SizedBox()),

                  IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/svg/minus.svg")),
                  Text(" عدد $count"),
                  IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/svg/plus.svg")),

                ],
              )
            ],
          ),
        ),
        Image.asset(
          "assets/png/unnamed.png",
          height: 110,
        ),

      ],
    )
    );
  }
}
