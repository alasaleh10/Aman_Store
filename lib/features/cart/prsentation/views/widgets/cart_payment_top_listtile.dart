import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class CartPaymentTopListTile extends StatelessWidget {
  const CartPaymentTopListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'choosePaymentMehod'.tr(),
        style: AppStyle.textStyleRegular16
            .copyWith(fontWeight: FontWeight.bold, height: 2),
      ),
      subtitle: Text(
        'amanSupportomrePaymentMetgod'.tr(),
        style: AppStyle.textStyleRegular14.copyWith(height: 3),
      ),
    );
  }
}
