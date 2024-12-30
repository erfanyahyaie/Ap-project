import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../components/text_style.dart';
import '../res/colors.dart';
import '../res/dimens.dart';

class BtmNavItem extends StatelessWidget {
  String iconSvgPath;
  String text;
  bool isActive;
  void Function() onTap;
  BtmNavItem({super.key,
    required this.iconSvgPath,
    required this.text,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        color: AppColors.btmNavColor,

        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(iconSvgPath, color:
                  isActive?
                  AppColors.btmNavActive: AppColors.btmNavInActive,
              ),
              const SizedBox(height: Dimens.small,),
              Text(text,style: isActive? AppTextStyles.btmNavActive:AppTextStyles.btmNavInActive,)
            ],
          ),
        ),
      ),
    );
  }
}