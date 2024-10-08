import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/widgets/shimar_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheekCartProductLoading extends StatelessWidget {
  const CheekCartProductLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimarLoading(
          height: 50.h,
          width: 100.w,
        ),
        vSizedBox(5),
        ShimarLoading(
          height: 50.h,
          width: 200.w,
        )
      ],
    );
  }
}
