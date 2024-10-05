import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DonOrderRow extends StatelessWidget {
  final String image, title, subtitle;

  const DonOrderRow(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          image,
          colorFilter:
              const ColorFilter.mode(AppColors.kWhiteColor, BlendMode.srcIn),
          height: 25.h,
          width: 15.w,
          fit: BoxFit.fill,
        ),
        hSizedBox(8.5),
        Text(
          title,
          style: AppStyle.textStyleRegular14.copyWith(
              color: AppColors.kWhiteColor, fontWeight: FontWeight.w300),
        ),
        hSizedBox(8.5),
        Text(
          subtitle,
          style: AppStyle.textStyleRegular14.copyWith(
              color: AppColors.kWhiteColor, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
