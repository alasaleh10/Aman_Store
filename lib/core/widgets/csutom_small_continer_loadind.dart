import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/app_colors.dart';

Shimmer titleContinerShimmare() {
    return Shimmer.fromColors(
      baseColor: AppColors.kOtpBorderColor.withOpacity(.2),
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: 20.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.r),
        ),
      ),
    );
  }