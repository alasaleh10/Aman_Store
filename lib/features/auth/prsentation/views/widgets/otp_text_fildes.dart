import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../view_model/confirm_email_cuibt/confirm_email_cubit.dart';

class CustomTextFailedOtp extends StatelessWidget {
  const CustomTextFailedOtp({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<ConfirmEmailCubit>();
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: OtpTextField(
        cursorColor: Colors.black,
        focusedBorderColor: Colors.black,
        clearText: false,
        enabledBorderColor: Colors.black,
        disabledBorderColor: Colors.black,
        borderWidth: 1,
        numberOfFields: 5,
        borderColor: Colors.black,
        fieldWidth: 60.w,
        fieldHeight: 60.h,
        showFieldAsBox: true,
        borderRadius: BorderRadius.circular(8.r),

        onSubmit: (String verificationCode) {
          cubit.otpCode = verificationCode;
          // print(verificationCode);
        }, // end onSubmit
      ),
    );
  }
}
