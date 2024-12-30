import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/text_style.dart';
import '../res/dimens.dart';

class CatWidget extends StatelessWidget {
  const CatWidget({
    super.key,
    required this.title,
    required this.ontap,
    required this.colors,
    required this.iconPath,
  });

  final title;
  final ontap;
  final colors;
  final iconPath;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(Dimens.small),
            height: size.height*.2,
            width: size.width*.2,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimens.large),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: colors
                )
            ),
            child: SvgPicture.asset(iconPath),
          ),
          SizedBox(height: Dimens.small*.3,),
          Text(
            title,
            style: AppTextStyles.title,
          )
        ],
      ),
    );
  }
}

// [
// Colors.red,
// Colors.blueAccent,
// ]