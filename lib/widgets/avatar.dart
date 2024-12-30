import 'package:flutter/cupertino.dart';
import 'package:untitled/components/extention.dart';
import '../components/text_style.dart';
import '../res/dimens.dart';
import '../res/strings.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(1000),
          child: Image.asset("assets/png/avatar.png"),
        ),
        Dimens.medium.height,
        Text(AppStrings.chooseProfileImage, style: AppTextStyles.avatarText,)
      ],
    );
  }
}
