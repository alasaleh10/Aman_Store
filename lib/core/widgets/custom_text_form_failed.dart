import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';
import 'custom_textform_border.dart';

class CustomTextFormField extends StatelessWidget {
  final Color? borderColor;
  final bool isCommed;
  final void Function(String)? onChanged;
  final Widget? seffexIcon;
  final String? Function(String?)? validation;
  final String? image;
  final String title;
  final int maxLines;
  final bool obesText;
  final TextInputType? textInputType;
  final TextEditingController? textFormController;

  const CustomTextFormField(
      {super.key,
      this.image,
      required this.title,
      this.textFormController,
      this.validation,
      this.obesText = false,
      this.textInputType,
      this.isCommed = false,
      this.maxLines = 1,
      this.seffexIcon,
      this.onChanged,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.5),
      child: TextFormField(
        onChanged: onChanged,
        maxLines: maxLines,
        keyboardType: textInputType,
        obscureText: obesText,
        validator: validation,
        controller: textFormController,
        cursorColor: AppColors.kPrimColor,
        decoration: InputDecoration(
            floatingLabelBehavior: maxLines > 1
                ? FloatingLabelBehavior.always
                : FloatingLabelBehavior.auto,
            hintStyle: AppStyle.textStyleRegular16,
            hintText: title,
            errorStyle: AppStyle.textStyleRegular14
                .copyWith(color: AppColors.kPrimColor3),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(title, style: AppStyle.textStyleRegular16)),
            prefixIconColor: Colors.black,
            suffixIcon: seffexIcon,
            prefixIcon: isCommed
                ? null
                : Padding(
                    padding: const EdgeInsetsDirectional.only(start: 19),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          image!,
                          // height: 25.h,
                          // width: 10.w,
                        ),
                        SizedBox(width: 10.w),
                      ],
                    ),
                  ),
            // Text(title, style: AppStyle.textStyleRegular16)
            focusedErrorBorder:
                textFormBorder(isCommed: isCommed, borderColor: borderColor),
            disabledBorder:
                textFormBorder(isCommed: isCommed, borderColor: borderColor),
            contentPadding: EdgeInsets.symmetric(
                vertical: 10, horizontal: isCommed ? 15 : 0),
            focusedBorder:
                textFormBorder(isCommed: isCommed, borderColor: borderColor),
            errorBorder:
                textFormBorder(isCommed: isCommed, borderColor: borderColor),
            enabledBorder:
                textFormBorder(isCommed: isCommed, borderColor: borderColor)),
      ),
    );
  }
}
