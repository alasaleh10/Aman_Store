import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class AddRemoveCArtContiner extends StatelessWidget {
  final int count;
  final EdgeInsetsGeometry? padding;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  const AddRemoveCArtContiner(
      {super.key,
      required this.count,
      required this.onAdd,
      required this.onRemove,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.symmetric(horizontal: 8.w),
      margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 6.h),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.kOtpBorderColor),
          borderRadius: BorderRadius.circular(15.r)),
      child: Row(
        children: [
          GestureDetector(
            onTap: onAdd,
            child: Icon(
              Icons.add,
              size: 25.r,
            ),
          ),
          const VerticalDivider(),
          Text(
            '$count',
            style: AppStyle.textStyleBold17,
          ),
          const VerticalDivider(),
          GestureDetector(
            onTap: onRemove,
            child: Icon(
              Icons.remove,
              size: 25.r,
            ),
          ),
        ],
      ),
    );
  }
}
