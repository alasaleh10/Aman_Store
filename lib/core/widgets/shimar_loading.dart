import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimarLoading extends StatelessWidget {
  final double? height;
  final double? width;
  const ShimarLoading({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 100.h,
      width: width ?? double.infinity,
      child: Shimmer.fromColors(
        baseColor: AppColors.kOtpBorderColor.withOpacity(.2),
        highlightColor: Colors.grey[100]!,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
    );
  }
}
