import 'package:aman_store2/core/functions/decimal_number.dart';
import 'package:aman_store2/core/functions/show_snac_bar.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_product_cubit/cart_products_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/cached_network_image_widget.dart';
import '../../../data/models/cart_items_model/cart_item_model.dart';
import 'add_remove_cart_continer.dart';

class CartProductItem extends StatelessWidget {
  final CartITem cartITem;
  const CartProductItem({super.key, required this.cartITem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.kOtpBorderColor),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Expanded(
            child: AspectRatio(
                aspectRatio: 1, child: CachedImageWidget(url: cartITem.image!)),
          ),
          SizedBox(width: 8.w),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartITem.subName,
                  style: AppStyle.textStyleRegular14
                      .copyWith(color: const Color(0xff8B959E)),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  cartITem.name!,
                  style: AppStyle.textStyleBold18.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.kBlackColor),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                RichText(
                  text: TextSpan(
                      style: AppStyle.textStyleBold12,
                      text: 'الإجمالي',
                      children: [
                        WidgetSpan(child: SizedBox(width: 5.w)),
                        TextSpan(
                            style: AppStyle.textStyleRegular14.copyWith(
                                color: AppColors.kPrimColor,
                                fontWeight: FontWeight.bold),
                            text:
                                '${decimalNumer(price: cartITem.productTotal)}  ${'ry2'.tr()}')
                      ]),
                ),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          RichText(
                            text: TextSpan(
                                style: AppStyle.textStyleSemiBold15
                                    .copyWith(color: AppColors.kPrimColor),
                                text: cartITem.discount == 0
                                    ? decimalNumer(price: cartITem.price)
                                    : decimalNumer(
                                        price: cartITem.priceAfterDiscount),
                                children: [
                                  WidgetSpan(child: SizedBox(width: 5.w)),
                                  TextSpan(
                                      style: AppStyle.textStyleRegular14
                                          .copyWith(
                                              color: AppColors.kPrimColor),
                                      text: 'ry2'.tr()),
                                ]),
                          ),
                          RichText(
                              text: TextSpan(
                            text: cartITem.discount == 0
                                ? '____'
                                : '${decimalNumer(price: cartITem.price)} ${'ry2'.tr()}',
                            style: AppStyle.textStyleRegular14.copyWith(
                                color: AppColors.kOtpBorderColor,
                                decoration: TextDecoration.lineThrough),
                          )),
                          SizedBox(height: 5.h),
                        ],
                      ),
                      AddRemoveCArtContiner(
                        onAdd: () {
                          if (cartITem.quantity == cartITem.quilty) {
                            showSnackBar(context,
                                message: 'لايوجد كمية إضافية');
                            return;
                          }
                          context
                              .read<CartProductsCubit>()
                              .cartOpretions(cartITem.id!, true);
                        },
                        onRemove: () {
                          context
                              .read<CartProductsCubit>()
                              .cartOpretions(cartITem.id!, false);
                        },
                        count: cartITem.quantity!,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
