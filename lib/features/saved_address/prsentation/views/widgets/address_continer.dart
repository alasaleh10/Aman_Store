import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressContiner extends StatelessWidget {
  const AddressContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kOtpBorderColor),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RadioListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              activeColor: AppColors.kPrimColor,
              value: 1,
              groupValue: 1,
              onChanged: (value) {},
              title: Text(
                'setAsDefualtAddress'.tr(),
                style: AppStyle.textStyleRegular14,
              ),
              secondary: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.kOtpBorderColor)),
                  child: Icon(
                    Icons.edit_outlined,
                    size: 23.r,
                    color: AppColors.kPrimColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'العمل',
                style: AppStyle.textStyleRegular16
                    .copyWith(color: AppColors.kBlackColor),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                  'حضرموت – سيئون – شارع الجزائر – عمارة الكاف – شقة رقم 6',
                  style: AppStyle.textStyleBold12
                      .copyWith(fontWeight: FontWeight.w400)
                  //  Styls.textStyl12,
                  ),
            ),
            const SizedBox(height: 15)
          ],
        ),
      ),
    );
  }
}
