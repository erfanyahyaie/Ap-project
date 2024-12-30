import 'package:flutter/cupertino.dart';

import '../res/colors.dart';
import '../res/dimens.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize{
  const CustomAppBar({super.key,
    required this.child
  });

  @override
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(preferredSize: preferredSize, child: Container(
      height: preferredSize.height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(Dimens.medium),
              bottomRight: Radius.circular(Dimens.medium)
          ),
          color: AppColors.appBar,
          boxShadow: [
            BoxShadow(
                color: AppColors.shadow,
                offset: Offset(0, 2),
                blurRadius: 2
            )
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.medium),
        child: child,
      ),
    ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}