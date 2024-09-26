import 'package:aman_store2/core/functions/show_snac_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class ItemAddToCartButton extends StatelessWidget {
  final double? horizontal, vertical;
  final int id;
  const ItemAddToCartButton(
      {super.key, required this.id, this.horizontal, this.vertical});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showSnackBar(context, message: 'قريبا');
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: horizontal ?? 30.w, vertical: vertical ?? 10.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.kPrimColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.kPrimColor.withOpacity(.3),
                spreadRadius: 2,
                blurRadius: 30,
                offset: const Offset(0, 0),
              ),
            ]),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('addToCart'.tr(),
                  style: AppStyle.textStyleBold12.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.kWhiteColor)),
              const SizedBox(width: 5),
              SvgPicture.asset(Assets.imagesAddCart)
            ],
          ),
        ),
      ),
    );
  }
}
