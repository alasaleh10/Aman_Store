import 'package:aman_store2/core/functions/get_app_size.dart';
import 'package:aman_store2/core/widgets/shimar_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetilsLoading extends StatelessWidget {
  const OrderDetilsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...List.generate(
            (getAppHeight(context) / 200.h).floor(),
            (index) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: ShimarLoading(
                    height: 200.h,
                  ),
                ))
      ],
    );
  }
}
