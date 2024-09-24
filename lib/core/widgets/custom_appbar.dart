import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

AppBar customAppbar(String title,{Color? backgroundColor}) {
  return AppBar(
    backgroundColor: backgroundColor,
    bottom: const PreferredSize(
      preferredSize: Size.zero,
      child: Divider(),
    ),
    title: Text(
      title,
      style: AppStyle.textStyleSemiBold20,
    ),
  );
}
