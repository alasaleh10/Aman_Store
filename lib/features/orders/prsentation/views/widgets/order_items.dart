import 'package:aman_store2/core/functions/decimal_number.dart';
import 'package:aman_store2/core/functions/format_date.dart';
import 'package:aman_store2/features/orders/data/models/orders_model.dart';
import 'package:aman_store2/features/orders/prsentation/views/widgets/order_status.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routers/app_routers.dart';
import '../../../../../core/utils/app_colors.dart';
import 'follow_order_continer.dart';
import 'table_detils_texts.dart';

class OrderItems extends StatelessWidget {
  final Order order;

  const OrderItems({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          FollowOrderContiner(
            onTap: () {
              context.pushNamed(AppRouters.followOrderView, extra: order.id!);
            },
            orderNumber: '${order.id}',
          ),
          Table(
            border: TableBorder.all(color: AppColors.kOtpBorderColor),
            children: [
              TableRow(children: [
                TableDetilsTexts(
                  title: 'orderTime'.tr(),
                  subTitle: formatedDate2(order.createdAt!),
                ),
                TableDetilsTexts(
                  title: 'deliveryTime'.tr(),
                  subTitle: order.deliveryDate == null
                      ? '_'
                      : formatedDate(order.deliveryDate!),
                ),
              ]),
              TableRow(children: [
                TableDetilsTexts(
                    title: 'orderTotal'.tr(),
                    subTitle:
                        '${decimalNumer(price: order.totalOrder)}  ${'ry'.tr()}'),
                TableDetilsTexts(
                  doneDelivery: true,
                  title: 'orderStatus'.tr(),
                  subTitle: orderStatus(order.status!),
                ),
              ]),
            ],
          )
        ],
      ),
    );
  }
}
