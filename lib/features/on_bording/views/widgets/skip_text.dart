import 'package:aman_store2/core/helper/cached_helper.dart';
import 'package:aman_store2/core/utils/app_constsans.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routers/app_routers.dart';
import '../../../../core/utils/app_styles.dart';

class SkipText extends StatelessWidget {
  final bool? isActive;
  const SkipText({super.key, this.isActive = true});

  @override
  Widget build(BuildContext context) {
    return isActive == true
        ? Align(
            alignment: AlignmentDirectional.topStart,
            child: TextButton(
              onPressed: () {
                CacheHelper.saveData(key: AppConstants.onBording, value: true);
                context.goNamed(AppRouters.loginView);
              },
              child: Text(
                'skip'.tr(),
                style: AppStyle.textStyleBold18,
              ),
            ),
          )
        : const SizedBox(height: 35);
  }
}
