import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class CustomOrderDetilsRichedText extends StatelessWidget {
  final String title;
  final String subTitle;
  final Color? titleColor,subTitleColor;
  final TextStyle? titleStyle,subTitleStyle;
  const CustomOrderDetilsRichedText(
      {super.key, required this.title, required this.subTitle, this.titleColor, this.subTitleColor, this.titleStyle, this.subTitleStyle});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: '$title :  ',
          style: titleStyle??  AppStyle.textStyleRegular14
              .copyWith(color:titleColor?? AppColors.kBlackColor),
          children: [
            TextSpan(
                style:subTitleStyle?? AppStyle.textStyleRegular16
                    .copyWith(color:subTitleColor?? AppColors.kPrimColor),
                text: subTitle),
          ]),
    );
  }
}
