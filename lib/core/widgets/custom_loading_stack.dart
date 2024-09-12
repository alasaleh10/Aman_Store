import 'package:aman_store2/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class CustomLoadingStack extends StatelessWidget {
  const CustomLoadingStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8.r)),
        child: Lottie.asset(Assets.imagesLoadingAnimation,
            height: 120.h, width: 150.w),
      ),
    );
  }
}

void showLoadingStack(BuildContext context) {
  showDialog(
      context: context,
      builder: (_) => const CustomLoadingStack(),
      barrierDismissible: false);
}
