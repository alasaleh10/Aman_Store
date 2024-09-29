import 'package:aman_store2/core/functions/get_app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utils/app_colors.dart';

class HomeSearchLoading extends StatelessWidget {
  const HomeSearchLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: (getAppHeight(context) / 120.h).floor(),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Shimmer.fromColors(
            baseColor: AppColors.kOtpBorderColor.withOpacity(.2),
            highlightColor: Colors.grey[300]!,
            child: Container(
              width: double.infinity,
              height: 120.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          ),
        );
      },
    );
  }
}
