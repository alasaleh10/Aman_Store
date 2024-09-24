import 'package:aman_store2/features/my_account/prsentation/view_model/technical_support_cubit/technical_support_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_textform_border.dart';

class TSDropButtonTextForm extends StatelessWidget {
  const TSDropButtonTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: 'إقتراح',
      iconEnabledColor: AppColors.kBlackColor,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 8.w),
          border: textFormBorder(),
          enabledBorder: textFormBorder(),
          disabledBorder: textFormBorder(),
          focusedBorder: textFormBorder()),
      isExpanded: true,
      items: [
        DropdownMenuItem(
          value: 'إقتراح',
          child: Text(
            'إقتراح',
            style: AppStyle.textStyleRegular16,
          ),
        ),
        DropdownMenuItem(
          value: 'شكوى',
          child: Text(
            'شكوى',
            style: AppStyle.textStyleRegular16,
          ),
        )
      ],
      onChanged: (value) {
        context.read<TechnicalSupportCubit>().problemType=value??"إقتراح";
      },
    );
  }
}
