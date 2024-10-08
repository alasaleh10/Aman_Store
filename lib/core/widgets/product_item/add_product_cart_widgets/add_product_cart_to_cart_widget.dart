import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/functions/show_snac_bar.dart';
import 'package:aman_store2/core/widgets/cached_network_image_widget.dart';
import 'package:aman_store2/core/widgets/no_internet_stack.dart';
import 'package:aman_store2/core/widgets/product_item/add_product_cart_widgets/cheek_cart_product_loading.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cheek_cart_product_cubit/cheek_cart_p_roduct_cubit.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cheek_cart_product_cubit/cheek_cart_p_roduct_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../features/cart/data/models/display_item_cart.dart';
import '../../custom_elevated_button.dart';
import '../../custom_loading_stack.dart';
import '../../erroe_stacke.dart';
import 'add_cart_product_column.dart';
import 'add_to_cart_events.dart';
import 'cheek_cart_product_failure.dart';

class AddProductCartWidget extends StatelessWidget {
  final VoidCallback onSucsess;
  final DisplayItemCart displayItemCart;

  const AddProductCartWidget(
      {super.key, required this.displayItemCart, required this.onSucsess});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Icon(
                  Icons.close,
                  size: 30.r,
                ),
              ),
              Row(children: [
                Expanded(
                    child: AspectRatio(
                  aspectRatio: 1,
                  child: CachedImageWidget(url: displayItemCart.image!),
                )),
                hSizedBox(15),
                AddCartProductColumn(displayItemCart: displayItemCart),
              ]),
              vSizedBox(25),
              BlocConsumer<CheekCartPRoductCubit, CheekCartPRoductState>(
                listener: (context, state) {
                  if (isDialogOpen(context)) {
                    context.pop();
                  }
                  state.mapOrNull(
                    loading2: (value) => showLoadingStack(context),
                    failure2: (failure) =>
                        showErrorStack(context, failure.message, () {
                      if (context.read<CheekCartPRoductCubit>().type == 0) {
                        context.read<CheekCartPRoductCubit>().editCart();
                      } else {
                        context
                            .read<CheekCartPRoductCubit>()
                            .deleteProductFromCart();
                      }
                    }),
                    sucsess2: (value) {
                      context.pop();
                      showSnackBar(context,
                          message: value.doneModel.message, isError: false);
                      onSucsess.call();
                    },
                  );
                },
                buildWhen: (previous, current) =>
                    current is! Loading2 &&
                    current is! Failure2 &&
                    current is! Sucsess2,
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () => const SizedBox(),
                    failure: (value) => CheekCartProductFailure(
                      erroe: value.message,
                      onTap: () {
                        context.read<CheekCartPRoductCubit>().cheekCart();
                      },
                    ),
                    loading: (value) => const CheekCartProductLoading(),
                    sucsess: (data) => AddToCartEvents(
                      count: data.cartProductModel.quantity,
                      displayItemCart: displayItemCart,
                    ),
                  );
                },
              ),
              // const Spacer(),
              vSizedBox(20),
              Row(
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                      fontSize: 16.sp,
                      radius: 8.r,
                      title: 'تعديل السلة',
                      onPressed: () {
                        if (context.read<CheekCartPRoductCubit>().count == 0) {
                          return;
                        }
                        context.read<CheekCartPRoductCubit>().editCart();
                      },
                    ),
                  ),
                  hSizedBox(10),
                  Expanded(
                    child: CustomElevatedButton(
                      fontSize: 16.sp,
                      backgroundColor: Colors.red,
                      radius: 8.r,
                      title: 'الحذف من السلة',
                      onPressed: () {
                        context
                            .read<CheekCartPRoductCubit>()
                            .deleteProductFromCart();
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
