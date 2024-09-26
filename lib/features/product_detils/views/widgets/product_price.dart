import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/functions/is_arabic.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class ProductPrice extends StatelessWidget {
  final int price;
  final int discount;
  final int priceAfterDiscount;
  const ProductPrice(
      {super.key,
      required this.price,
      required this.discount,
      required this.priceAfterDiscount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: TextSpan(
                      style: AppStyle.textStyleSemiBold23
                          .copyWith(color: AppColors.kPrimColor),
                      text: priceAfterDiscount == 0
                          ? '$price'
                          : priceAfterDiscount.toString(),
                      children: [
                    WidgetSpan(
                      child: SizedBox(
                        width: 10.w,
                      ),
                    ),
                    TextSpan(text: 'ry2'.tr())
                  ])),
              Container(
                height: 40.h,
                width: 141.w,
                decoration: BoxDecoration(
                    color: const Color(0xffFEF1E5),
                    border: Border.all(color: AppColors.kPrimColor),
                    borderRadius: BorderRadius.circular(25)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(Assets.imagesOffrsSharp),
                    Positioned(
                      left: isArabick(context) ? null : 15.w,
                      right: isArabick(context) ? 15.w : null,
                      child: FittedBox(
                        child: Text(
                          '${'discount'.tr()} % $discount-',
                          style: AppStyle.textStyleRegular14
                              .copyWith(color: AppColors.kPrimColor),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          if (discount != 0)
            Text(
              '$price ${'ry2'.tr()}',
              style: AppStyle.textStyleBold22.copyWith(
                fontWeight: FontWeight.w400,
                color: const Color(0xffCACACA),
                decoration: TextDecoration.lineThrough,
                decorationColor: const Color(0xffCACACA),
              ),
            ),
        ],
      ),
    );
  }
}
