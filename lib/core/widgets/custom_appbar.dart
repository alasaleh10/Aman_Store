import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

AppBar customAppbar(String title)
{
  return AppBar(
            bottom: const PreferredSize(
              preferredSize: Size.zero,
              child: Divider(),
            ),
            title: Text(
              title
             ,
              style: AppStyle.textStyleSemiBold20,
            ),
          );
}