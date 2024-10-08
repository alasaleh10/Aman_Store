import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

import '../../../features/cart/data/models/display_item_cart.dart';
import '../../../features/cart/prsentation/view_model/cheek_cart_product_cubit/cheek_cart_p_roduct_cubit.dart';
import '../../di/depencency_injection.dart';
import 'add_product_cart_widgets/add_product_cart_to_cart_widget.dart';

class ItemAddToCartButton extends StatelessWidget {
  final VoidCallback onSucsess;
  final DisplayItemCart displayItemCart;
  final double? horizontal, vertical;

  const ItemAddToCartButton({
    super.key,
    this.horizontal,
    this.vertical,
    required this.displayItemCart,
    required this.onSucsess,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          enableDrag: false,
          isDismissible: false,
          context: context,
          builder: (_) => BlocProvider(
            create: (context) =>
                CheekCartPRoductCubit(gitIt(), displayItemCart.id!)
                  ..cheekCart(),
            child: AddProductCartWidget(
              onSucsess: onSucsess,
              displayItemCart: displayItemCart,
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: horizontal ?? 30.w, vertical: vertical ?? 10.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.kPrimColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.kPrimColor.withOpacity(.3),
                spreadRadius: 2,
                blurRadius: 30,
                offset: const Offset(0, 0),
              ),
            ]),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('addToCart'.tr(),
                  style: AppStyle.textStyleBold12.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.kWhiteColor)),
              const SizedBox(width: 5),
              SvgPicture.asset(Assets.imagesAddCart)
            ],
          ),
        ),
      ),
    );
  }
}
