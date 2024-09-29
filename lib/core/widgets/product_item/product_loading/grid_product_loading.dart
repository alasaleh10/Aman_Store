import 'package:aman_store2/core/functions/get_app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'product_item_loading.dart';

class GridProductLoading extends StatelessWidget {
  final bool shrinkWrap;
  const GridProductLoading({super.key, this.shrinkWrap = false});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount = constraints.maxWidth > 550 ? 3 : 2;
        double aspectRatio = constraints.maxWidth > 550 ? 1 / 1.8 : 1 / 1.6;

        return GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: shrinkWrap,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: aspectRatio,
          ),
          itemBuilder: (context, index) {
            return const ProductItemLoading();
          },
          itemCount: (getAppHeight(context) / 150.h).floor(),
        );
      },
    );
  }
}
