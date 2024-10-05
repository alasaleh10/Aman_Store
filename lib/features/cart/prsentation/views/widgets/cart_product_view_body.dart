import 'package:aman_store2/core/functions/show_snac_bar.dart';
import 'package:aman_store2/core/widgets/failure_page_view.dart';
import 'package:aman_store2/core/widgets/no_internet_page_view.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_product_cubit/cart_products_cubit.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_product_cubit/cart_products_state.dart';
import 'package:aman_store2/features/cart/prsentation/views/widgets/cart_product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../home/prsentation/views/widgets/home_search_loading.dart';
import 'cart_stepper.dart';

class CartProdectsViewBody extends StatelessWidget {
  const CartProdectsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
            child: CartStepper(
          index: 0,
        )),

        BlocConsumer<CartProductsCubit, CartProductsState>(
          listener: (context, state) {
            state.whenOrNull(
              failure: (message) => showSnackBar(context, message: message),
              sucsess2: (message) {
                showSnackBar(context, message: message, isError: false);
                context.read<CartProductsCubit>().getCart(isFromcart: true);
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
                orElse: () => const SliverToBoxAdapter(child: SizedBox()),
                loading: () => const HomeSearchLoading(),
                error: (message) => SliverFillRemaining(
                      hasScrollBody: false,
                      child: FailurePageView(
                          message: message,
                          onTap: () {
                            context.read<CartProductsCubit>().getCart();
                          }),
                    ),
                noInternet: () => SliverFillRemaining(
                      hasScrollBody: false,
                      child: NoInternetPage(onTap: () {
                        context.read<CartProductsCubit>().getCart();
                      }),
                    ),
                sucsess: (cartItem) {
                  return SliverList.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: CartProductItem(
                          cartITem: cartItem.items[index],
                        ),
                      );
                    },
                    itemCount: cartItem.items.length,
                  );
                });
          },
        ),

        SliverToBoxAdapter(child: SizedBox(height: 25.h)),
        // const PCartAddMore(),
      ],
    );
  }
}
