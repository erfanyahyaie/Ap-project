import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/components/extention.dart';
import '../../components/text_style.dart';
import '../../res/colors.dart';
import '../../res/dimens.dart';
import '../../res/strings.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/surface_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppStrings.profile,
                  style: AppTextStyles.title,
                ),
              )),
          body: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: Dimens.large),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Dimens.large.height,
                    ClipRRect(
                      borderRadius: BorderRadius.circular(300),
                      child: Image.asset("assets/png/avatar.png"),
                    ),
                    Dimens.medium.height,
                
                    Text(
                      "امیرعلی اسماعیلی",
                      style: AppTextStyles.avatarText,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "آدرس فعال",
                        style: AppTextStyles.avatarText,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/svg/left_arrow.svg"),
                          Expanded(
                            child: Text(
                              AppStrings.lurem,
                              style: AppTextStyles.avatarText,
                              softWrap: true,
                              maxLines: 2,
                              textAlign: TextAlign.right,
                            ),
                          ),

                          
                        ],
                      )
                    ),
                    Dimens.small.height,

                    Container(
                      height: 2,
                      width: double.infinity,
                      color: AppColors.surfaceColor,
                    ),
                    Dimens.small.height,
                    ProfileItem(
                      svgIcon: "assets/svg/user.svg",
                      content: "امیرعلی اسماعیلی",
                    ),
                    ProfileItem(
                      svgIcon: "assets/svg/cart.svg",
                      content: "6037849585858585",
                    ),
                    ProfileItem(
                      svgIcon: "assets/svg/phone.svg",
                      content: "09115462395",
                    ),
                    SurfaceContainer(child: Text("قوانین"))
                
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.svgIcon,
    required this.content
  });

  final svgIcon;
  final content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimens.small),
      child: Align(
          alignment: Alignment.centerRight,
          child: Row(
            children: [
      
              Expanded(
                child: Text(
                  content,
                  style: AppTextStyles.avatarText,
                  softWrap: true,
                  maxLines: 2,
                  textAlign: TextAlign.right,
                ),
              ),
              Dimens.small.height,
              SvgPicture.asset(svgIcon),
      
      
            ],
          )
      ),
    );
  }
}
