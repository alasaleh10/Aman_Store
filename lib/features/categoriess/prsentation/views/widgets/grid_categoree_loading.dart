import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/functions/get_app_size.dart';
import 'categoriee_item_loading.dart';

class GridCategorieeLoading extends StatelessWidget {
  const GridCategorieeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 10.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.sizeOf(context).width > 550 ? 6 : 3,
      ),
      itemCount: (getAppHeight(context) / 130.h).floor() * 3,
      itemBuilder: (context, index) {
        return const CategorieeItemLoading();
      },
    );
  }
}
