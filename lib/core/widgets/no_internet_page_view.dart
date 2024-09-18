import 'dart:async';

import 'package:aman_store2/core/utils/app_assets.dart';
import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NoInternetPage extends StatefulWidget {
  final VoidCallback onTap;
  const NoInternetPage({super.key, required this.onTap});

  @override
  State<NoInternetPage> createState() => _NoInternetPageState();
}

class _NoInternetPageState extends State<NoInternetPage> {
  late StreamSubscription<InternetConnectionStatus> _subscription;
  final connectionChecker = InternetConnectionChecker();
  @override
  void initState() {
    _subscription = connectionChecker.onStatusChange.listen(
      (InternetConnectionStatus status) {
        if (status == InternetConnectionStatus.connected) {
          widget.onTap.call();
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AspectRatio(
          aspectRatio: 2 / .6,
          child: SvgPicture.asset(
            Assets.imagesNointernetSvg2,
            colorFilter:
                const ColorFilter.mode(AppColors.kPrimColor4, BlendMode.srcIn),
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          'تعذر الإتصال بالإنترنت \n الرجاء التأكد من إتصال الإنترنت',
          style: AppStyle.textStyleBold18
              .copyWith(color: AppColors.kBlackColor, height: 1.9),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 25.h),
        TextButton(
            onPressed: widget.onTap,
            child: Text(
              'تــحديث',
              style: AppStyle.textStyleBold18
                  .copyWith(color: AppColors.kBlackColor),
            ))
      ],
    );
  }
}
