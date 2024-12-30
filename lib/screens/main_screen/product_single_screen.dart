import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/components/extention.dart';

import '../../components/text_style.dart';
import '../../res/dimens.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/cart_badge.dart';

class ProductSingleScreen extends StatelessWidget {
  const ProductSingleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: CustomAppBar(child:
          Row(
            children: [
              CartBadge(),
              Expanded(child: Text(
                "product name",
                style: AppTextStyles.productTitle,
                textDirection: TextDirection.rtl,)),
              IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/svg/close.svg"))
            ],
          )

      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/png/unnamed.png",
                  fit: BoxFit.cover,
                  width: MediaQuery.sizeOf(context).width,
                ),

                Container(
                  margin: EdgeInsets.all(Dimens.medium),
                  padding: EdgeInsets.all(Dimens.medium),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.medium),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "بنسر",
                        style: AppTextStyles.productTitle,
                        textDirection: TextDirection.rtl,
                      ),
                      Text(
                        "مسواک بنسر مدل سه عددی",
                        style: AppTextStyles.caption,
                        textDirection: TextDirection.rtl,
                      ),
                      Divider(),
                      ProdactTabView(),
                      60.0.height
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.blue,
              height: 60,
              width: double.infinity,
            ),
          )
        ],
      ),
    ));
  }
}


class ProdactTabView extends StatefulWidget {
  const ProdactTabView({super.key});

  @override
  State<ProdactTabView> createState() => _ProdactTabViewState();
}

class _ProdactTabViewState extends State<ProdactTabView> {

  var selectedTabIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: tabs.length,
              itemExtent: MediaQuery.sizeOf(context).width/tabs.length,
              itemBuilder: ((context, index) => GestureDetector(

            onTap: ()=> setState(() => selectedTabIndex = index),

            child: Container(
              padding: EdgeInsets.all(Dimens.medium),
              child: Text(
                tabs[index],
                style: index==selectedTabIndex?
                AppTextStyles.selectedTab :AppTextStyles.unSelectedTab,
              ),
            ),
          ))),
        ),
        IndexedStack(
          index: selectedTabIndex,
          children: [
            Review(),
            Comments(),
            Features()
          ],
        )
      ],
    );
  }
}

List<String> tabs = ["نقد و ررسی", "نظرات", "خصوصیات"];

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("خصوصیات خصوصیات خصوصیات خصوصیات خصوصیات خصوصیات خصوصیات خصوصیات خصوصیات ");
  }
}

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}


