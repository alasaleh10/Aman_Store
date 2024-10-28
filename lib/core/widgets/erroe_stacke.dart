import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constins/const.dart';
import '../utils/app_assets.dart';
import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class ErrorStack extends StatelessWidget {
  final String message;
  final VoidCallback? onTap;
  final bool isUpdating;
  const ErrorStack(
      {super.key, required this.message, this.onTap, this.isUpdating = true});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
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
          if (isUpdating)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.kPrimColor.withOpacity(.8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r)),
                minimumSize: Size(160.w, 40.h),
              ),
              onPressed: onTap,
              child: Text(
                'تحديث',
                style: AppStyle.textStyleBold17.copyWith(
                    color: AppColors.kBlackColor.withOpacity(.7),
                    fontFamily: elMessiri),
              ),
            )
        ],
      ),
    );
  }
}

void showErrorStack(BuildContext context, String message, VoidCallback? onTap,
    {bool isUpdating = true}) {
  showDialog(
    context: context,
    builder: (_) =>
        ErrorStack(message: message, onTap: onTap, isUpdating: isUpdating),
  );
}
