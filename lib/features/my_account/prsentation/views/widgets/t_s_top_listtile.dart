import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class TSTopListTile extends StatelessWidget {
  const TSTopListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'weHappyForConnectionUs'.tr(),
        style: AppStyle.textStyleSemiBold20,
        textAlign: TextAlign.center,
      ),
      subtitle: Text(
        'whatHelpYouNeed'.tr(),
        style: AppStyle.textStyleRegular16.copyWith(height: 3),
        textAlign: TextAlign.center,
      ),
    );
  }
}
