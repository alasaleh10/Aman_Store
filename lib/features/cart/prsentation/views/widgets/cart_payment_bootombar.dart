import 'package:aman_store2/features/cart/prsentation/view_model/cart_payment_cubit/cart_payment_cubit.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_payment_cubit/cart_payment_state.dart';
import 'package:aman_store2/features/cart/prsentation/views/widgets/cart_next_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPaymentBottomBar extends StatelessWidget {
  const CartPaymentBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CartPaymentCubit>();
    return IntrinsicHeight(
      child: BlocBuilder<CartPaymentCubit, CartPaymentState>(
        builder: (context, state) {
          return CartNextButton(
            onPressed: () {
              cubit.addOrder();
            },
            price: cubit.discount == 0
                ? (cubit.cartModel!.total + cubit.cartModel!.delivery) -
                    cubit.discount
                : ((cubit.cartModel!.total + cubit.cartModel!.delivery) -
                        cubit.discount) *
                    cubit.coupone ~/
                    100,
          );
        },
      ),
    );
  }
}
