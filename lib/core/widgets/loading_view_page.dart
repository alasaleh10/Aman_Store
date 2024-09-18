import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../utils/app_assets.dart';

class LoadingViewPage extends StatelessWidget {
  const LoadingViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(Assets.imagesLoadingAnimation,
          height: 120.h, width: 150.w),
    );
  }
}