import 'package:aman_store2/core/utils/app_assets.dart';
import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:aman_store2/core/widgets/cached_network_image_widget.dart';
import 'package:aman_store2/features/notifications/data/model/notification_model.dart';
import 'package:aman_store2/features/notifications/views/widgets/preview_notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationItem extends StatelessWidget {
  final NotificationModel notificationModel;
  const NotificationItem({super.key, required this.notificationModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (_) => PreviewNotificationWidget(
                  notificationModel: notificationModel,
                ));
      },
      leading: SizedBox(
          height: 50.h,
          width: 50.w,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(90.r),
            child: notificationModel.image == null
                ? const Image(
                    image: AssetImage(Assets.imagesNoImagePNG),
                    fit: BoxFit.cover,
                  )
                : CachedImageWidget(url: notificationModel.image!),
          )),
      title: Text(
        notificationModel.title ?? '',
        style: AppStyle.textStyleRegular16,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: notificationModel.body == null
          ? null
          : Text(notificationModel.body!, style: AppStyle.textStyleRegular14,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          ),
    );
  }
}
