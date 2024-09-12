import 'package:aman_store2/core/utils/app_assets.dart';
import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:aman_store2/core/utils/app_styles.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NoInternetStack extends StatelessWidget {
  final VoidCallback onTap;
  const NoInternetStack({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(mainAxisSize: MainAxisSize.min, children: [
        SvgPicture.asset(
          Assets.imagesNoInternetVector,
          height: 80.h,
          colorFilter:
              const ColorFilter.mode(AppColors.kPrimColor, BlendMode.srcIn),
        ),
        SizedBox(height: 5.h),
        Text(
          'interNetConntction'.tr(),
          textAlign: TextAlign.center,
          style:
              AppStyle.textStyleBold18.copyWith(color: AppColors.kBlackColor),
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
              style: AppStyle.textStyleBold17
                  .copyWith(color: AppColors.kBlackColor),
            ))
      ]),
    );
  }
}

void showNoInternet(BuildContext context2, VoidCallback onTap) {
  showDialog(context: context2, builder: (_) => NoInternetStack(onTap: onTap));
}

bool isDialogOpen(BuildContext context) {
  return ModalRoute.of(context)?.isCurrent != true;
}
