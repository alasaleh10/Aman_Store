import 'package:aman_store2/features/auth/data/model/user_model.dart';
import 'package:aman_store2/features/my_account/data/models/push_user_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/routers/app_routers.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class EditAccountContiner extends StatelessWidget {
  final UserModel user;
  const EditAccountContiner({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * .3),
      child: GestureDetector(
        onTap: () {
          PushUserModel pushUserModel = PushUserModel(
            name: user.user.firstName,
            name2: user.user.lastName,
            phone: user.user.phone,
          );

          context.pushNamed(AppRouters.editMyDataView, extra: [
            context,
            pushUserModel
          ]);
        
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.kPrimColor)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.settings,
                color: AppColors.kPrimColor,
              ),
              const SizedBox(width: 9),
              Text(
                'editmyData'.tr(),
                style: AppStyle.textStyleRegular16.copyWith(
                    color: AppColors.kPrimColor, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
