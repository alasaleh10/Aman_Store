import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_styles.dart';

class AboutAmanListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  const AboutAmanListTile({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        icon,
        size: 30.r,
      ),
      title: SelectableText(
        title,
        style: AppStyle.textStyleBold17,
      ),
    );
  }
}
