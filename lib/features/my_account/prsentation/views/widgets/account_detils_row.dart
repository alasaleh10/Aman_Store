import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_styles.dart';
import 'account_image_stack.dart';

class AccountDetilsRow extends StatelessWidget {
  const AccountDetilsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          AccountImageStack(image: Assets.imagesTestProfile, onTap: () {}),
          const SizedBox(width: 20),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'علاء باقيمه',
                style: AppStyle.textStyleSemiBold20,
              ),
              Text(
                'ala2020saleh@gmail.com',
                style: AppStyle.textStyleRegular16.copyWith(
                  color: const Color(0xffCACACA),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
