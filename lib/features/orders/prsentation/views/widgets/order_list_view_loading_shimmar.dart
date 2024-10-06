import 'package:aman_store2/core/widgets/shimar_loading.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/functions/get_app_size.dart';

class OrdersLoading extends StatelessWidget {
  const OrdersLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: (getAppHeight(context) / 120.h).floor(),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: ShimarLoading(
              height: 150.h,
            ));
      },
    );
  }
}
