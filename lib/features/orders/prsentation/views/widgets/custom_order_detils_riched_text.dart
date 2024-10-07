import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class CustomOrderDetilsRichedText extends StatelessWidget {
  final String title;
  final String subTitle;
  const CustomOrderDetilsRichedText(
      {super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: '$title :  ',
          style: AppStyle.textStyleRegular14
              .copyWith(color: AppColors.kBlackColor),
          children: [
            TextSpan(
                style: AppStyle.textStyleRegular16
                    .copyWith(color: AppColors.kPrimColor),
                text: subTitle),
          ]),
    );
  }
}
