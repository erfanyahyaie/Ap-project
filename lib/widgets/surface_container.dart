import 'package:flutter/cupertino.dart';

import '../res/colors.dart';
import '../res/dimens.dart';

class SurfaceContainer extends StatelessWidget {
  const SurfaceContainer({
    super.key,
    required this.child,
  });

  final child;

  @override
  Widget build(BuildContext context) {


    return Container(
      margin: EdgeInsets.fromLTRB(Dimens.medium, Dimens.medium, Dimens.medium, 0),
      padding: EdgeInsets.all(Dimens.medium),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.medium),
          color: AppColors.surfaceColor
      ),
      child: child,
    );
  }
}