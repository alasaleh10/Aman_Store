import 'package:aman_store2/features/cart/prsentation/view_model/cheek_cart_product_cubit/cheek_cart_p_roduct_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../features/cart/data/models/display_item_cart.dart';
import '../../../../features/cart/prsentation/views/widgets/add_remove_cart_continer.dart';
import '../../../../features/orders/prsentation/views/widgets/custom_order_detils_riched_text.dart';
import '../../../functions/decimal_number.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';

class AddToCartEvents extends StatefulWidget {
  final DisplayItemCart displayItemCart;
  final int count;
  const AddToCartEvents(
      {super.key, required this.displayItemCart, required this.count});

  @override
  State<AddToCartEvents> createState() => _AddToCartEventsState();
}

class _AddToCartEventsState extends State<AddToCartEvents> {
  int? cartCount;
  @override
  void initState() {
    cartCount = widget.count;
    context.read<CheekCartPRoductCubit>().count = cartCount;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IntrinsicHeight(
            child: IntrinsicWidth(
          child: AddRemoveCArtContiner(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              count: cartCount!,
              onAdd: () {
                if (cartCount == widget.displayItemCart.quantity) return;

                setState(() {
                  cartCount = (cartCount ?? 0) + 1;
                  context.read<CheekCartPRoductCubit>().count = cartCount!;
                });
              },
              onRemove: () {
                if (cartCount! > 1) {
                  setState(() {
                    cartCount = (cartCount ?? 0) - 1;
                    context.read<CheekCartPRoductCubit>().count = cartCount!;
                  });
                }
              }),
        )),
        CustomOrderDetilsRichedText(
            titleStyle:
                AppStyle.textStyleBold18.copyWith(color: AppColors.kBlackColor),
            subTitleStyle: AppStyle.textStyleBold22.copyWith(fontSize: 20.sp),
            title: 'الإجــمالي',
            subTitle:
                '${decimalNumer(price: widget.displayItemCart.priceAfterDiscount! * cartCount!)} ${'ry2'.tr()}'),
      ],
    );
  }
}
