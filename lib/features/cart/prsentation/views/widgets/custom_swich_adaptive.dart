import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
class CustomSwitchAdaptive extends StatelessWidget {
  final bool val;
  final Color? activeColor,circlColor;

  final void Function(bool) onChanged;
  const CustomSwitchAdaptive(
      {super.key, required this.val, required this.onChanged, this.activeColor, this.circlColor});

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      activeColor:circlColor?? AppColors.kWhiteColor,
      activeTrackColor:activeColor?? AppColors.kPrimColor,
      inactiveThumbColor: AppColors.kWhiteColor,
      applyCupertinoTheme: true,
      value: val,
      onChanged: onChanged,
    );
  }
}
