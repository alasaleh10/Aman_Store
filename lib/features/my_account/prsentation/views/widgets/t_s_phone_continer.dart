import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:aman_store2/features/my_account/prsentation/view_model/technical_support_cubit/technical_support_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TSPhoneContiner extends StatelessWidget {
  const TSPhoneContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<TechnicalSupportCubit>().openTelephone(context);
      },
      child: Container(
        height: 71.h,
        width: 69.w,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: AppColors.kPrimColor.withOpacity(.3),
            spreadRadius: 1,
            blurRadius: 30.r,
            offset: const Offset(0, 0),
          ),
        ], color: AppColors.kPrimColor, shape: BoxShape.circle),
        child: const Center(
            child: Icon(Icons.phone, color: AppColors.kWhiteColor)),
      ),
    );
  }
}
