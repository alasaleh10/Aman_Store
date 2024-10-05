import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:aman_store2/features/cart/data/models/payment_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../view_model/cart_payment_cubit/cart_payment_cubit.dart';

class CartPaymentMethodsList extends StatelessWidget {
  const CartPaymentMethodsList({super.key});

  // const CartPaymentMethodsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List.generate(
          paymentMthods.length,
          (index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            child: Container(
              decoration: BoxDecoration(
                  color:
                      context.read<CartPaymentCubit>().paymentType == index + 1
                          ? const Color(0xffFEEEE0)
                          : null,
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                      color: context.read<CartPaymentCubit>().paymentType ==
                              index + 1
                          ? AppColors.kPrimColor
                          : AppColors.kOtpBorderColor)),
              child: RadioListTile(
                  activeColor: AppColors.kPrimColor,
                  title: Text(paymentMthods[index].title,
                      style: AppStyle.textStyleRegular14
                          .copyWith(color: const Color(0xff8B959E))),
                  secondary: SvgPicture.asset(
                    paymentMthods[index].image,
                  ),
                  groupValue: context.read<CartPaymentCubit>().paymentType,
                  onChanged: (val) {
                    if (val == 1) {
                      context.read<CartPaymentCubit>().changePaymentType(1);
                    }

                    if (val == 2) {
                      context.read<CartPaymentCubit>().cheekMyWallet();
                    }
                  },
                  value: paymentMthods[index].type),
            ),
          ),
        )
      ],
    );
  }
}
