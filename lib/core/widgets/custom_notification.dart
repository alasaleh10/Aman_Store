import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../routers/app_routers.dart';
import '../utils/app_assets.dart';

class CustomNotificationIcon extends StatelessWidget {
  const CustomNotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          context.pushNamed(AppRouters.notificationView);
        },
        icon: SvgPicture.asset(Assets.imagesNotifcation));
  }
}
