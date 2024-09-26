import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../../../../core/functions/app_sizedbox.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class ProductDiscriptionReadMore extends StatelessWidget {
  final String discription;
  const ProductDiscriptionReadMore({super.key, required this.discription});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'procuctDetils'.tr(),
            style: AppStyle.textStyleBold18.copyWith(
                color: AppColors.kBlackColor, fontWeight: FontWeight.bold),
          ),
          vSizedBox(10),
          ReadMoreText(
            discription,
            trimLines: 4,
            colorClickableText: AppColors.kPrimColor,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'more'.tr(),
            trimExpandedText: 'أقل',
            style: AppStyle.textStyleRegular14.copyWith(height: 2),
            moreStyle: AppStyle.textStyleRegular14.copyWith(
                color: AppColors.kPrimColor, fontWeight: FontWeight.bold),
            lessStyle: AppStyle.textStyleRegular14.copyWith(
                color: AppColors.kPrimColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
