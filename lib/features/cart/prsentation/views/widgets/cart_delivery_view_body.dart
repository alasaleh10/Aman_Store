import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_delivery_cubit/cart_delivery_cubit.dart';
import 'package:aman_store2/features/cart/prsentation/views/widgets/cart_delivery_body.dart';
import 'package:aman_store2/features/cart/prsentation/views/widgets/custom_swich_adaptive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cart_stepper.dart';

class CartDeliveryViewBody extends StatefulWidget {
  const CartDeliveryViewBody({super.key});

  @override
  State<CartDeliveryViewBody> createState() => _CartDeliveryViewBodyState();
}

class _CartDeliveryViewBodyState extends State<CartDeliveryViewBody> {
  bool isAnimated = true;
  bool isDelivery = false;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: CartStepper(index: 1)),
        SliverToBoxAdapter(child: vSizedBox(10)),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Row(
              children: [
                Text('إضافة توصيل؟',
                    style: AppStyle.textStyleBold18
                        .copyWith(color: AppColors.kPrimColor)),
                hSizedBox(20),
                CustomSwitchAdaptive(
                  val: isDelivery,
                  onChanged: (val) {
                    context.read<CartDeliveryCubit>().setIsDelivery(val);
                    if (val) {
                      setState(() {
                        isAnimated = val;

                        isDelivery = val;
                      });
                    } else {
                      setState(() {
                        isAnimated = val;
                      });
                      Future.delayed(
                        const Duration(milliseconds: 900),
                        () {
                          setState(() {
                            isDelivery = val;
                          });
                        },
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ),
        !isDelivery
            ? const SliverToBoxAdapter(
                child: SizedBox(),
              )
            : SliverFillRemaining(
                child: CartDeliviryBody(
                animated: isAnimated,
              ))
      ],
    );
  }
}
