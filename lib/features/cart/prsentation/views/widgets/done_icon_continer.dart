import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';

class DoneIconContiner extends StatelessWidget {
  const DoneIconContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
            padding: EdgeInsets.only(left: 120.w),
            child: SvgPicture.asset(Assets.imagesStars)),
        Container(
       
          decoration: const BoxDecoration(
              color: AppColors.kWhiteColor, shape: BoxShape.circle),
          child: Center(
            child: Icon(
              Icons.check,
              color: AppColors.kPrimColor,
              size: 100.r,
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(right: 120.w),
            child: SvgPicture.asset(Assets.imagesStars))
      ],
    );
  }
}
