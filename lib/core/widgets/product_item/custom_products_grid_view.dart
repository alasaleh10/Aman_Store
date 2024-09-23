import 'package:aman_store2/core/widgets/product_item/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/product_model/list_product_model.dart';

class CustomProductGridView extends StatelessWidget {
  final VoidCallback onTap;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final ListProductModel listProductModel;
  const CustomProductGridView(
      {super.key,
      required this.listProductModel,
      required this.onTap,
      this.shrinkWrap = false,
      this.physics});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount = constraints.maxWidth > 550 ? 3 : 2;
        double aspectRatio = constraints.maxWidth > 550 ? 1 / 1.8 : 1 / 1.6;

        return GridView.builder(
          physics: physics,
          shrinkWrap: shrinkWrap,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: aspectRatio,
          ),
          itemBuilder: (context, index) {
            return ProductItem(
              onTap: onTap,
              product: listProductModel.productModel[index],
            );
          },
          itemCount: listProductModel.productModel.length,
        );
      },
    );
  }
}
