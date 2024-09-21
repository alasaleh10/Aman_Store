import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'shimar_image_loading.dart';

class CachedImageWidget extends StatelessWidget {
  final String url;
  const CachedImageWidget({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      imageUrl: url,
      placeholder: (context, url) => const ShimarImageLoading(),
      errorWidget: (context, url, error) => Icon(
        Icons.error_outline,
        size: 35.r,
        color: Colors.white,
      ),
    );
  }
}
