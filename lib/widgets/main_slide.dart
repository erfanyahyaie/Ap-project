import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/components/extention.dart';

import '../components/text_style.dart';
import '../res/dimens.dart';

class MainSlide extends StatelessWidget {
  late final String textSlide ;
  late final String svgPath;
 MainSlide({
    required this.svgPath,
    required this.textSlide,
}
     );

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
    child: RotatedBox(

    quarterTurns: -1,
    child: Column(
    children: [
    Row(
    children: [
    Transform.rotate(
    angle: 1.5,
    child: SvgPicture.asset(svgPath)),
    Dimens.medium.width,
    const Text("مشاهده همه")
    ],
    ),
    Text(textSlide, style: AppTextStyles.amazing,),
    ]
    ),
    ),
    );
  }
}
