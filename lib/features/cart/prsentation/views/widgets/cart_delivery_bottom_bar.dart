import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/routers/app_routers.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_delivery_cubit/cart_delivery_cubit.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_delivery_cubit/cart_delivery_state.dart';
import 'package:aman_store2/features/cart/prsentation/views/widgets/cart_product_bottom_bart.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/functions/decimal_number.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../data/models/cart_model.dart';
import '../../../data/models/go_payment_model.dart';
import 'cart_next_button.dart';

class CartDeliveryBootomBar extends StatelessWidget {
  const CartDeliveryBootomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CartDeliveryCubit>();
    return IntrinsicHeight(
      child: BlocBuilder<CartDeliveryCubit, CartDeliveryState>(
        builder: (context, state) {
          if (cubit.isDelivery) {
            return state.maybeWhen(
                orElse: () => const SizedBox(),
                loading: () => const CartProductButtonLoading(),
                sucsess: (data) {
                  return Column(
                    children: [
                      RowTitle(title: 'التوصيل', price: cubit.deliveryTotal),
                      vSizedBox(6),
                      RowTitle(price: cubit.total, title: 'سعر السلة'),
                      CartNextButton(
                        onPressed: () {
                          CartModel cartModel = CartModel(
                            delivery: cubit.deliveryTotal,
                            total: cubit.total,
                          );
                          GoPaymentModel goPaymentModel = GoPaymentModel(
                              cartModel: cartModel,
                              isDelivery: cubit.isDelivery,
                              isFastingDelivery: cubit.isFastDelivery,
                              items: cubit.items,
                              location: cubit.location);
                          context.pushNamed(AppRouters.cartPaymentView,
                              extra: goPaymentModel);
                        },
                        price: cubit.total + (cubit.deliveryTotal),
                      ),
                    ],
                  );
                });
          } else {
            return CartNextButton(
              onPressed: () {
                CartModel cartModel = CartModel(
                  delivery: cubit.deliveryTotal,
                  total: cubit.total,
                );

                GoPaymentModel goPaymentModel = GoPaymentModel(
                    cartModel: cartModel,
                    isDelivery: cubit.isDelivery,
                    isFastingDelivery: cubit.isFastDelivery,
                    location: cubit.location,
                    items: cubit.items);
             
                context.pushNamed(AppRouters.cartPaymentView,
                    extra: goPaymentModel);
              },
              price: cubit.total,
            );
          }
        },
      ),
    );
  }
}

class RowTitle extends StatelessWidget {
  final String title;
  final int price;
  const RowTitle({super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppStyle.textStyleRegular16,
          ),
          Text('${decimalNumer(price: price)} ${'ry2'.tr()}',
              style: AppStyle.textStyleBold18.copyWith(
                  color: AppColors.kPrimColor, fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}
