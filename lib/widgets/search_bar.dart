import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../components/text_style.dart';
import '../res/colors.dart';
import '../res/dimens.dart';
import '../res/strings.dart';

class SearchBtn extends StatelessWidget {
  const SearchBtn({
    super.key,
    required this.onTap,

  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.medium),
      child: GestureDetector(
        onTap: onTap,

        child: Container(
          decoration: BoxDecoration(
              color: AppColors.searchBar,
              borderRadius: BorderRadius.circular(60),
              boxShadow: [
                BoxShadow(
                    blurRadius: 4,
                    color: AppColors.shadow,
                    offset: Offset(0, 3)
                ),

              ]
          ),
          height: 52,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              SvgPicture.asset("assets/svg/search.svg"),
              const Text(AppStrings.searchProduct, style: AppTextStyles.hint,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/png/main_logo.png"),
              )
            ],
          ),

        ),
      ),
    );
  }
}