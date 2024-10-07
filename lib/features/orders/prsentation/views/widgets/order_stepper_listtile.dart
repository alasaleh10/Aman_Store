import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import 'stepper_continer_cheeker.dart';

class OrderStepperListTile extends StatelessWidget {
  final bool? isCancel;
  final String title, subTitle;
  final Color? color;
  const OrderStepperListTile(
      {super.key,
      required this.title,
      required this.subTitle,
      this.color,
      this.isCancel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
          isCancel == true ? stepperContinerCheeker(index: 0, status: 0) : null,

      title: Text(
        title,
        style: AppStyle.textStyleRegular14
            .copyWith(color: const Color(0xff8B959E)),
      ),
      subtitle: Text(
        subTitle,
        style: AppStyle.textStyleRegular14.copyWith(
            color: color ?? const Color(0xff45495E),
            fontWeight: FontWeight.bold),
      ),
      // SizedBox(height: 25.h),
    );
  }
}
