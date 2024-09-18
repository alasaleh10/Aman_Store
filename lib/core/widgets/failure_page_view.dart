import 'package:aman_store2/core/utils/app_assets.dart';
import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_styles.dart';

class FailurePageView extends StatelessWidget {
  final String message;
  final VoidCallback onTap;
  const FailurePageView(
      {super.key, required this.message, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AspectRatio(
          aspectRatio: 2 / .6,
          child: SvgPicture.asset(
            Assets.imagesFailureSVG,
            colorFilter: const ColorFilter.mode(Colors.red, BlendMode.srcIn),
          ),
        ),
        SizedBox(height: 25.h),
        Text(
          message,
          style:
              AppStyle.textStyleBold22.copyWith(color: AppColors.kBlackColor),
        ),
        SizedBox(height: 15.h),
        TextButton(
            onPressed: onTap,
            child: Text(
              'تــحديث',
              style: AppStyle.textStyleBold18
                  .copyWith(color: AppColors.kBlackColor),
            ))
      ],
    )
        //  CustomElevatedButton(
        //   title: message,
        //   onPressed: onTap,
        // ),
        );
  }
}
