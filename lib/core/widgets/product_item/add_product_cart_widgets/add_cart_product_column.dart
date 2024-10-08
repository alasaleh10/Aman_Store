import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../features/cart/data/models/display_item_cart.dart';
import '../../../../features/orders/prsentation/views/widgets/custom_order_detils_riched_text.dart';
import '../../../functions/app_sizedbox.dart';
import '../../../functions/decimal_number.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';

class AddCartProductColumn extends StatelessWidget {
  const AddCartProductColumn({
    super.key,
    required this.displayItemCart,
  });

  final DisplayItemCart displayItemCart;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            displayItemCart.subName!,
            style: AppStyle.textStyleRegular14
                .copyWith(color: const Color(0xff8B959E)),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          vSizedBox(5),
          Text(
            displayItemCart.name!,
            style: AppStyle.textStyleBold18.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.kBlackColor),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          CustomOrderDetilsRichedText(
              title: 'الخصم',
              subTitle: '${displayItemCart.discount} %'),
          CustomOrderDetilsRichedText(
              title: 'السعر',
              subTitle:
                  '${decimalNumer(price: displayItemCart.priceAfterDiscount)} ${'ry2'.tr()}'),
          vSizedBox(10),
          if (displayItemCart.quantity! <= 3)
            CustomOrderDetilsRichedText(
                subTitleColor: AppColors.kPrimColor3,
                titleColor: AppColors.kPrimColor3,
                title: 'الكمية المتبقية',
                subTitle: '${displayItemCart.quantity}')
        ],
      ),
    );
  }
}
