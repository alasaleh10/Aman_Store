import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/functions/decimal_number.dart';

class CartPaymentRow extends StatelessWidget {
  final String title;
  final int price;
  const CartPaymentRow({super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: AppStyle.textStyleRegular14
                  .copyWith(color: const Color(0xff8B959E))),
          Text(
            '${decimalNumer(price: price)} ${'ry2'.tr()}',
            style: AppStyle.textStyleRegular16
                .copyWith(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
