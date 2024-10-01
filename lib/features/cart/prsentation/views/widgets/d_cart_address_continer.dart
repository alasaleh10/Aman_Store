import 'package:aman_store2/core/widgets/failure_page_view.dart';
import 'package:aman_store2/core/widgets/no_internet_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/shimar_loading.dart';
import '../../../../location/prsentation/views/widgets/return_location.dart';
import '../../view_model/cart_delivery_cubit/cart_delivery_cubit.dart';
import '../../view_model/cart_delivery_cubit/cart_delivery_state.dart';

class DCartAddressContiner extends StatelessWidget {
  const DCartAddressContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartDeliveryCubit, CartDeliveryState>(
      buildWhen: (previous, current) => current is! Initial,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          failure: (message) => FailurePageView(
              message: message,
              onTap: () {
                context.read<CartDeliveryCubit>().cartDelivery();
              }),
          loading: () => const ShimarLoading(),
          noLocation: (message) => Text(
            message,
            style: AppStyle.textStyleBold17.copyWith(
                color: AppColors.kPrimColor, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          noInternet: () => NoInternetPage(onTap: () {
            context.read<CartDeliveryCubit>().cartDelivery();
          }),
          sucsess: (cartDeliveryModel) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                  padding: EdgeInsets.only(bottom: 20.h, top: 15.h),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.kOtpBorderColor),
                      borderRadius: BorderRadius.circular(5.r)),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    leading: Radio(
                        activeColor: AppColors.kPrimColor,
                        fillColor:
                            MaterialStateProperty.all(AppColors.kPrimColor),
                        value: 4,
                        groupValue: 4,
                        onChanged: (t) {}),
                    title: Text(cartDeliveryModel.locationModel.type,
                        style: AppStyle.textStyleRegular16
                            .copyWith(color: AppColors.kBlackColor)),
                    subtitle: Text(
                      fullLocation(cartDeliveryModel.locationModel),
                      style: AppStyle.textStyleBold12
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                  )),
            );
          },
        );
      },
    );
  }
}
