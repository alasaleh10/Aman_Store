import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_payment_cubit/cart_payment_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'active_coupon_continer.dart';

class CartPaymentEnterCoupon extends StatelessWidget {
  const CartPaymentEnterCoupon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: TextFormField(
        cursorColor: AppColors.kPrimColor,
        controller: context.read<CartPaymentCubit>().coupon,
        decoration: InputDecoration(
            suffixIcon: const IntrinsicWidth(
              child: ActiveCouponContiner(),
            ),
            hintText: 'enterCoupon'.tr(),
            hintStyle: AppStyle.textStyleRegular14,
            contentPadding:
                EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
            enabledBorder: border(),
            focusedBorder: border(),
            errorBorder: border()),
      ),
    );
  }
}

OutlineInputBorder border() {
  return OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.kOtpBorderColor),
      borderRadius: BorderRadius.circular(160.r));
}
