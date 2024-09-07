import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import 'home_search_item_discount_continer.dart';

class HomeSearchItem extends StatelessWidget {
  final bool isOrder;
  const HomeSearchItem({super.key,  this.isOrder=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.kOtpBorderColor),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                Assets.imagesTestItem1,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'أبو الولد',
                    style: AppStyle.textStyleRegular14
                        .copyWith(color: const Color(0xff8B959E)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'جبنة أبو الولد قلبلة للدهن',
                    style: AppStyle.textStyleBold18.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.kBlackColor),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  RichText(
                    text: TextSpan(
                        text: '350  ',
                        style: AppStyle.textStyleSemiBold20
                            .copyWith(color: AppColors.kPrimColor),
                        children: [TextSpan(text: 'ry2'.tr())]),
                  ),
                   HomeSearchItemDiscountContiner(
                    isOrder: isOrder,
                      cartCount: 3, discount: 15, id: 1, oldPrice: 3965)
                ],
              ))
        ],
      ),
    );
  }
}
