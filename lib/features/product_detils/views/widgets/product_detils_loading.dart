import 'package:aman_store2/core/widgets/product_item/product_loading/product_item_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/functions/get_app_size.dart';
import '../../../../core/utils/app_colors.dart';

class ProductDetilsLoading extends StatelessWidget {
  const ProductDetilsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const CustomListTileShimmerLoading(),
      SizedBox(height: 25.h),
      Shimmer.fromColors(
        baseColor: AppColors.kOtpBorderColor.withOpacity(.2),
        highlightColor: Colors.grey[300]!,
        child: Container(
          height: getAppHeight(context) * .3,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 40.h),
      const CustomListTileShimmerLoading(),
      SizedBox(height: 25.h),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProductItemLoading(
                height: 160.h,
                width: 120.w,
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

class CustomListTileShimmerLoading extends StatelessWidget {
  const CustomListTileShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.kOtpBorderColor.withOpacity(.2),
      highlightColor: Colors.grey[300]!,
      child: ListTile(
        title: Container(
          width: double.infinity,
          height: 16.0,
          color: Colors.white,
        ),
        subtitle: Container(
          width: double.infinity,
          height: 22.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
