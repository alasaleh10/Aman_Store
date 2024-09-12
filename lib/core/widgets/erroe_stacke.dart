import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constins/const.dart';
import '../utils/app_assets.dart';
import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class ErrorStack extends StatelessWidget {
  final String message;
  final VoidCallback onTap;
  const ErrorStack({super.key, required this.message, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(mainAxisSize: MainAxisSize.min, children: [
        SvgPicture.asset(
          Assets.imagesErrorVector,
          height: 80.h,
          colorFilter:
              const ColorFilter.mode(AppColors.kPrimColor, BlendMode.srcIn),
        ),
        SizedBox(height: 5.h),
        Text(
          message,
          textAlign: TextAlign.center,
          style: AppStyle.textStyleBold17
              .copyWith(color: AppColors.kBlackColor, fontFamily: elMessiri),
        ),
        SizedBox(height: 8.h),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.kPrimColor.withOpacity(.8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r)),
              minimumSize: Size(160.w, 40.h),
            ),
            onPressed: onTap,
            child: Text(
              'update'.tr(),
              style: AppStyle.textStyleBold17.copyWith(
                  color: AppColors.kBlackColor, fontFamily: elMessiri),
            ))
      ]),
    );
  }
}

void showErrorStack(BuildContext context, String message, VoidCallback onTap) {
  showDialog(
      context: context,
      builder: (_) => ErrorStack(message: message, onTap: onTap));
}
