import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/cat_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CatWidget(
                      title: "کلاسیک",
                      ontap: (){},
                      colors: [
                        Colors.blueAccent,
                        Colors.redAccent,
                      ],
                       iconPath: "assets/svg/classic.svg"
                  ),
                  CatWidget(
                      title: "هوشمند",
                      ontap: (){},
                      colors: [
                        Colors.greenAccent,
                        Colors.lightBlue,
                      ],
                      iconPath: "assets/svg/smart.svg"
                  ),
                  CatWidget(
                      title: "دیجیتال",
                      ontap: (){},
                      colors: [
                        Colors.brown,
                        Colors.grey,
                      ],
                      iconPath: "assets/svg/digital.svg"
                  ),
                  CatWidget(
                      title: "رومیزی",
                      ontap: (){},
                      colors: [
                        Colors.yellow,
                        Colors.cyan,
                      ],
                      iconPath: "assets/svg/desk.svg"
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}

