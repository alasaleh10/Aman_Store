import 'package:aman_store2/core/di/depencency_injection.dart';
import 'package:aman_store2/core/routers/app_routers.dart';
import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../features/favorite/view_model/favorite_options_cubit/favorite_options_cubit.dart';

import '../../functions/decimal_number.dart';
import '../../models/product_model/product_model.dart';
import 'add_cart_button.dart';
import 'items_image_stck.dart';
import 'items_price_and_title.dart';

class ProductItem extends StatelessWidget {
  final bool? isDetils;
  final VoidCallback onTap;
  final VoidCallback? onTap2;
  final ProductModel product;
  const ProductItem(
      {super.key,
      required this.product,
      required this.onTap,
      this.isDetils,
      this.onTap2});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteOptionsCubit(gitIt(), product.id),
      child: Container(
        width: 0.4.sw,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.kOtpBorderColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: GestureDetector(
          onTap: () {
            if (isDetils == true) {
              onTap2!.call();
            } else {
              context.pushNamed(AppRouters.productDetilsView,
                  extra: product.id);
            }
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: ItemImageStack(
                  onTap: onTap,
                  isFaviorte: product.isFavorite!,
                  image: product.image,
                  id: product.id,
                ),
              ),
              SizedBox(height: 8.h),
              ItemsTitleAndPrice(
                title: product.name,
                subTitle: product.subName,
                price: decimalNumer(price: product.price),
              ),
              SizedBox(height: 8.h),
              SizedBox(
                width: double.infinity,
                child: FittedBox(
                  child: ItemAddToCartButton(id: product.id),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
