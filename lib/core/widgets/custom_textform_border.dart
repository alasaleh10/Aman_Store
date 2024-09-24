  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

OutlineInputBorder textFormBorder({bool isCommed = false,Color? borderColor}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(isCommed ? 10.r : 20.r),
        borderSide: isCommed
            ?  BorderSide(color:borderColor?? AppColors.kOtpBorderColor)
            : const BorderSide());
  }