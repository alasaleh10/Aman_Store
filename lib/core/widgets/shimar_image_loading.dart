
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
class ShimarImageLoading extends StatelessWidget {
  const ShimarImageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          decoration:  BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(60.r),
          ),
          
        ),
      );
  }
}