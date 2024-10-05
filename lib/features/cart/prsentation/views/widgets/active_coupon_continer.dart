import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_payment_cubit/cart_payment_cubit.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_payment_cubit/cart_payment_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActiveCouponContiner extends StatelessWidget {
  const ActiveCouponContiner({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CartPaymentCubit>();
    return GestureDetector(
      onTap: () {
        if (cubit.coupon.text.trim().isEmpty) return;

        if (cubit.isActive) {
          cubit.cheekCopone();
        } else {
          cubit.clearCoupone(isClear: true);
        }
      },
      child: BlocBuilder<CartPaymentCubit, CartPaymentState>(
        builder: (context, state) {
          return AnimatedContainer(
            height: 60.h,
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: cubit.continerColor.withOpacity(.3),
                    spreadRadius: 1,
                    blurRadius: 20,
                    offset: const Offset(0, 0),
                  ),
                ],
                color: cubit.continerColor,
                border: Border.all(color: AppColors.kPrimColor),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.r),
                  topLeft: Radius.circular(25.r),
                )),
            child: Center(
                child: Text(
              cubit.continerText,
              style: AppStyle.textStyleRegular14.copyWith(
                  color: AppColors.kWhiteColor, fontWeight: FontWeight.bold),
            )),
          );
        },
      ),
    );
  }
}
