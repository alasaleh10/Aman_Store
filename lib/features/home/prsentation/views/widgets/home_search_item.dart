import 'package:aman_store2/core/models/product_model/product_model.dart';
import 'package:aman_store2/core/routers/app_routers.dart';
import 'package:aman_store2/core/widgets/cached_network_image_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import 'home_search_item_discount_continer.dart';

class HomeSearchItem extends StatelessWidget {
  final ProductModel product;
  final bool isOrder;
  const HomeSearchItem(
      {super.key, this.isOrder = false, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(AppRouters.productDetilsView, extra: product.id);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kOtpBorderColor),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Expanded(
              child: AspectRatio(
                  aspectRatio: 1, child: CachedImageWidget(url: product.image)),
            ),
            SizedBox(width: 8.w),
            Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.subName,
                      style: AppStyle.textStyleRegular14
                          .copyWith(color: const Color(0xff8B959E)),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      product.name,
                      style: AppStyle.textStyleBold18.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.kBlackColor),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    RichText(
                      text: TextSpan(
                          text: (product.discount == 0
                                  ? product.price
                                  : product.priceAfterDiscount)
                              .toString(),
                          style: AppStyle.textStyleSemiBold20
                              .copyWith(color: AppColors.kPrimColor),
                          children: [TextSpan(text: 'ry2'.tr())]),
                    ),
                    HomeSearchItemDiscountContiner(
                        isOrder: isOrder,
                        cartCount: 3,
                        discount: product.discount,
                        id: product.id,
                        oldPrice: product.price)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
