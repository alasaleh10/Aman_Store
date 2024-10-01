import 'package:aman_store2/core/functions/decimal_number.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_delivery_cubit/cart_delivery_cubit.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_delivery_cubit/cart_delivery_state.dart';
import 'package:aman_store2/features/cart/prsentation/views/widgets/custom_swich_adaptive.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class DCartDeliveryContiner extends StatelessWidget {
  const DCartDeliveryContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        padding: EdgeInsets.only(bottom: 20.h),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kPrimColor),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                decoration: const BoxDecoration(color: AppColors.kPrimColor),
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.imagesFastDelevryCar),
                    const SizedBox(width: 11.8),
                    Text('fastDelivry'.tr(),
                        style: AppStyle.textStyleRegular16
                            .copyWith(color: AppColors.kWhiteColor)),
                    const Spacer(),
                    BlocBuilder<CartDeliveryCubit, CartDeliveryState>(
                      buildWhen: (previous, current) =>
                          current is Initial || current is Sucsess,
                      builder: (context, state) {
                        return CustomSwitchAdaptive(
                          circlColor: AppColors.kPrimColor,
                          activeColor: AppColors.kWhiteColor,
                          onChanged: (val) {
                            context
                                .read<CartDeliveryCubit>()
                                .setFastingDelivery(val);
                          },
                          val: context.read<CartDeliveryCubit>().isFastDelivery,
                        );
                      },
                    )
                  ],
                )),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('deliveryWithin'.tr(), style: AppStyle.textStyleBold12),
                Text('+ ${decimalNumer(price: 2000)} ${'ry'.tr()}',
                    style: AppStyle.textStyleBold12.copyWith(
                        color: AppColors.kPrimColor,
                        fontWeight: FontWeight.w600))
              ],
            )
          ],
        ),
      ),
    );
  }
}
