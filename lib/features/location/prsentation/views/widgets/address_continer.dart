import 'package:aman_store2/core/routers/app_routers.dart';
import 'package:animate_do/animate_do.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/location_model.dart';

class AddressContiner extends StatelessWidget {
  final LocationModel location;
  const AddressContiner({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.kOtpBorderColor),
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      activeColor: AppColors.kPrimColor,
                      value: true,
                      groupValue: location.isMain,
                      onChanged: (value) {},
                      title: Text(
                        'setAsDefualtAddress'.tr(),
                        style: AppStyle.textStyleRegular14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: GestureDetector(
                      onTap: () {
                        context.pushNamed(AppRouters.editAddressView,
                            extra: [location.id, context]);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.kOtpBorderColor),
                        ),
                        child: Icon(
                          Icons.edit_outlined,
                          size: 23.r,
                          color: AppColors.kPrimColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  location.type,
                  style: AppStyle.textStyleRegular16
                      .copyWith(color: AppColors.kBlackColor),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  '${location.name} - ${location.street}',
                  // 'حضرموت – سيئون – شارع الجزائر – عمارة الكاف – شقة رقم 6',
                  style: AppStyle.textStyleBold12.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 15)
            ],
          ),
        ),
      ),
    );
  }
}
