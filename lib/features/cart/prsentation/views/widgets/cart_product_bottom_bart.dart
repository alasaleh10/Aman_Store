import 'package:aman_store2/core/functions/get_app_size.dart';
import 'package:aman_store2/core/routers/app_routers.dart';
import 'package:aman_store2/core/widgets/erroe_stacke.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_product_cubit/cart_products_cubit.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_product_cubit/cart_products_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/csutom_small_continer_loadind.dart';
import '../../../../../core/widgets/custom_loading_stack.dart';
import '../../../../../core/widgets/no_internet_stack.dart';
import 'cart_next_button.dart';

class CartProductBottomBar extends StatelessWidget {
  const CartProductBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartProductsCubit, CartProductsState>(
      listener: (context, state) {
        if (isDialogOpen(context)) {
          context.pop();
        }
        state.mapOrNull(
          failure3: (message) => showErrorStack(context, message.message, () {
            context.read<CartProductsCubit>().cheekCartItemsQuantity();
          }),
          loading3: (value) => showLoadingStack(context),
          sucsess3: (value) => {
            context.pushNamed(AppRouters.cartDeliveryView, extra: [
              context.read<CartProductsCubit>().totalPrice,
              context.read<CartProductsCubit>().items
            ])
          },
        );
      },
      buildWhen: (previous, current) =>
          current is! Sucsess2 &&
          current is! Failure &&
          current is! Loading3 &&
          current is! Failure3 &&
          current is! Sucsess3,
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => const SizedBox(),
            loading: () => const IntrinsicHeight(
                  child: CartProductButtonLoading(),
                ),
            sucsess: (cartItemModel) => IntrinsicHeight(
                  child: CartNextButton(
                    onPressed: () {
                      context
                          .read<CartProductsCubit>()
                          .cheekCartItemsQuantity();
                    },
                    price: cartItemModel.totalPrice!,
                  ),
                ));
      },
    );
  }
}

class CartProductButtonLoading extends StatelessWidget {
  const CartProductButtonLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                titleContinerShimmare(),
                titleContinerShimmare(),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Shimmer.fromColors(
            baseColor: AppColors.kOtpBorderColor.withOpacity(.2),
            highlightColor: Colors.grey[100]!,
            child: Container(
              height: 90.h,
              width: getAppWidth(context) * 1.2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          )
        ],
      ),
    );
  }

  
}
