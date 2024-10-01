import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_delivery_cubit/cart_delivery_cubit.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import 'd_cart_add_new_location.dart';
import 'd_cart_address_continer.dart';
import 'd_cart_delevry_continer.dart';

class CartDeliviryBody extends StatefulWidget {
  final bool animated;
  const CartDeliviryBody({super.key, required this.animated});

  @override
  State<CartDeliviryBody> createState() => _CartDeliviryBodyState();
}

class _CartDeliviryBodyState extends State<CartDeliviryBody> {
  @override
  void initState() {
    context.read<CartDeliveryCubit>().cartDelivery();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Text(
            'delivryAddress'.tr(),
            style: AppStyle.textStyleBold18.copyWith(
                color: AppColors.kBlackColor, fontWeight: FontWeight.bold),
          ),
        ),
        vSizedBox(9),
        SlideInRight(
          animate: widget.animated,
          child: const DCartAddressContiner(),
        ),
        vSizedBox(15),
        SlideInRight(
          animate: widget.animated,
          child: const DCartAddLocation(),
        ),
        vSizedBox(25),
        SlideInLeft(
          animate: widget.animated,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Text('deliveryTime'.tr(),
                style: AppStyle.textStyleBold18.copyWith(
                    color: AppColors.kBlackColor, fontWeight: FontWeight.w600)),
          ),
        ),
        vSizedBox(8),
        SlideInLeft(
          animate: widget.animated,
          child: const DCartDeliveryContiner(),
        ),
        vSizedBox(25)
      ],
    );
  }
}
