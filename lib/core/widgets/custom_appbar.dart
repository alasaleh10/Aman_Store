import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

AppBar customAppbar(String title, {Color? backgroundColor, Size? size}) {
  return AppBar(
    backgroundColor: backgroundColor,
    bottom: PreferredSize(
      preferredSize: size ?? Size.zero,
      child: const Divider(),
    ),
    title: Text(
      title,
      style: AppStyle.textStyleSemiBold20,
    ),
  );
}
