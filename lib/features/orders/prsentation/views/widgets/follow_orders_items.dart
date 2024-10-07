import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/functions/decimal_number.dart';
import 'package:aman_store2/core/routers/app_routers.dart';
import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:aman_store2/core/widgets/cached_network_image_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../data/models/order_detils_model.dart';
import 'custom_order_detils_riched_text.dart';

class FollowOrdersItems extends StatelessWidget {
  final List<OrderItems> orderItems;
  const FollowOrdersItems({super.key, required this.orderItems});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: orderItems.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: OrderItemWidget(orderItems: orderItems[index]));
      },
    );
  }
}

class OrderItemWidget extends StatelessWidget {
  final OrderItems orderItems;
  const OrderItemWidget({super.key, required this.orderItems});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(AppRouters.productDetilsView,
            extra: orderItems.productID);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kOtpBorderColor),
            borderRadius: BorderRadius.circular(10.r)),
        child: Row(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: CachedImageWidget(url: orderItems.image!),
              ),
            ),
            hSizedBox(20),
            Expanded(
                flex: 3,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        orderItems.subName!,
                        style: AppStyle.textStyleRegular14
                            .copyWith(color: const Color(0xff8B959E)),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        orderItems.name!,
                        style: AppStyle.textStyleRegular16.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.kBlackColor),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      CustomOrderDetilsRichedText(
                        title: 'الكمية',
                        subTitle: '${orderItems.quantity}',
                      ),
                      CustomOrderDetilsRichedText(
                        title: 'سعر الوحدة',
                        subTitle:
                            '${decimalNumer(price: orderItems.price)} ${'ry2'.tr()}',
                      ),
                      CustomOrderDetilsRichedText(
                        title: 'الإجمالي',
                        subTitle:
                            '${decimalNumer(price: orderItems.price * orderItems.quantity)} ${'ry2'.tr()}',
                      )
                    ]))
          ],
        ),
      ),
    );
  }
}
