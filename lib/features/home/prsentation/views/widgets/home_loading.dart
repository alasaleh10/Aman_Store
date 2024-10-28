import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/widgets/product_item/product_loading/product_item_loading.dart';
import 'package:aman_store2/core/widgets/shimar_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/helper/responsive_helper/screen_height.dart';
import '../../../../../core/widgets/csutom_small_continer_loadind.dart';
import '../../../../categoriess/prsentation/views/widgets/categoriee_item_loading.dart';

class HomeLoading extends StatelessWidget {
  const HomeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      ShimarLoading(
        height: screenHeight(context) / 4,
      ),
      vSizedBox(10),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            titleContinerShimmare(),
            titleContinerShimmare(),
          ],
        ),
      ),
      vSizedBox(20),
      SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            8,
            (index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              child: const CategorieeItemLoading(),
            ),
          ),
        ),
      ),
      vSizedBox(20),
      Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          height: 10.h,
          width: 100.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Colors.white,
          ),
        ),
      ),
      vSizedBox(8),
      SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            8,
            (index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              child: SizedBox(
                height: 180.h,
                width: 120.w,
                child: const ProductItemLoading(),
              ),
            ),
          ),
        ),
      ),
      vSizedBox(20),
      Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          height: 10.h,
          width: 100.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Colors.white,
          ),
        ),
      ),
      vSizedBox(8),
      SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            8,
            (index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              child: SizedBox(
                height: 180.h,
                width: 120.w,
                child: const ProductItemLoading(),
              ),
            ),
          ),
        ),
      ),
    ]));
  }
}
