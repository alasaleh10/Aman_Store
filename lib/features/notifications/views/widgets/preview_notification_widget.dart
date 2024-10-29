import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:aman_store2/core/widgets/cached_network_image_widget.dart';
import 'package:aman_store2/features/notifications/data/model/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PreviewNotificationWidget extends StatelessWidget {
  final NotificationModel notificationModel;
  const PreviewNotificationWidget({super.key, required this.notificationModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      color: AppColors.kOtpBorderColor,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 250.h,
            width: double.infinity,
            child: notificationModel.image == null
                ? Container(
                    color: AppColors.kOtpBorderColor,
                    child: Center(
                      child: Icon(
                        Icons.info_outline,
                        color: AppColors.kPrimColor,
                        size: 50.r,
                      ),
                    ),
                  )
                : CachedImageWidget(url: notificationModel.image!),
          ),
          vSizedBox(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              notificationModel.title ?? '',
              style: AppStyle.textStyleBold18
                  .copyWith(color: AppColors.kBlackColor),
            ),
          ),
          vSizedBox(10),
          if (notificationModel.body != null)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                notificationModel.body!,
                style: AppStyle.textStyleBold18
                    .copyWith(color: AppColors.kBlackColor),
              ),
            )
        ],
      ),
    );
  }
}
