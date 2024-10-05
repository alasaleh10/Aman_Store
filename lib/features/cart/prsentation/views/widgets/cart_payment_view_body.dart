import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:aman_store2/core/widgets/no_internet_stack.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_payment_cubit/cart_payment_cubit.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_payment_cubit/cart_payment_state.dart';
import 'package:aman_store2/features/cart/prsentation/views/widgets/cart_payment_top_listtile.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_loading_stack.dart';
import '../../../../../core/widgets/erroe_stacke.dart';
import 'cart_payment_enter_coupon.dart';
import 'cart_payment_methods_list.dart';
import 'cart_payment_row.dart';
import 'cart_stepper.dart';
import 'done_order_widget.dart';

class CartPaymentViewBody extends StatelessWidget {
  const CartPaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartPaymentCubit, CartPaymentState>(
      listener: (context, state) {
        if (isDialogOpen(context)) {
          context.pop();
        }
        state.mapOrNull(
          loading: (value) => showLoadingStack(context),
          failure: (value) => showErrorStack(context, value.message, () {
            if (context.read<CartPaymentCubit>().type == 0) {
              context.read<CartPaymentCubit>().cheekCopone();
            }
            if (context.read<CartPaymentCubit>().type == 1) {
              context.read<CartPaymentCubit>().cheekMyWallet();
            }
            if (context.read<CartPaymentCubit>().type == 2) {
              context.read<CartPaymentCubit>().addOrder();
            }
          }),
          success2: (value) => {},
          success4: (value) {
            showModalBottomSheet(
                enableDrag: false,
                isDismissible: false,
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return  DoneOrderWidget(
                    doneModel: value.addOrderDoneModel,
                  );
                });
          },
        );
      },
      builder: (context, state) {
        return ListView(
          children: [
            const CartStepper(index: 2),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
              child: Text(
                'haveCopun'.tr(),
                style: AppStyle.textStyleRegular16
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            vSizedBox(16),
            const CartPaymentEnterCoupon(),
            const CartPaymentTopListTile(),
            // ignore: prefer_const_constructors
            CartPaymentMethodsList(),
            vSizedBox(15),
            CartPaymentRow(
                price: context.read<CartPaymentCubit>().cartModel!.total,
                title: 'إجمالي السلة'),
            CartPaymentRow(
                price: context.read<CartPaymentCubit>().cartModel!.delivery,
                title: 'التوصيل'),
            CartPaymentRow(
                price: context.read<CartPaymentCubit>().discount,
                title: 'الخصم')
          ],
        );
      },
    );
  }
}
