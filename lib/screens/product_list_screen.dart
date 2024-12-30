import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/components/extention.dart';

import '../res/dimens.dart';
import '../widgets/app_bar.dart';
import '../widgets/cart_badge.dart';
import '../widgets/product_item.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CartBadge(
                  count: 1,
                ),
                Row(
                  children: [
                    Text("پرفروش ترین ها"),
                    Dimens.small.width,
                    SvgPicture.asset("assets/svg/sort.svg")

                  ],
                ),

                IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/svg/close.svg")),


              ],
            )
        ),
        body: Column(
          children: [
            ProductGridView()
          ],
        )
      ),
    );
  }
}






class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: 
    GridView.builder(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            childAspectRatio: 1
        ),
        itemBuilder: ((context, index) => ProductItem(productName: "productName", price: 100))
    )
    );
  }
}
