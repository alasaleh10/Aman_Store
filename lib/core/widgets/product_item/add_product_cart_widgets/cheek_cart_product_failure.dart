import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CheekCartProductFailure extends StatelessWidget {
  final String erroe;
  final VoidCallback onTap;
  const CheekCartProductFailure(
      {super.key, required this.erroe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          erroe,
          style: AppStyle.textStyleRegular14.copyWith(
              color: AppColors.kPrimColor3, fontWeight: FontWeight.bold),
        ),
        TextButton(
            onPressed: onTap,
            child: Text(
              'تــحديث',
              style: AppStyle.textStyleBold17,
            ))
      ],
    );
  }
}
