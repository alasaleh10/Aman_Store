import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/functions/decimal_number.dart';
import 'package:aman_store2/core/functions/format_date.dart';
import 'package:aman_store2/features/location/prsentation/views/widgets/return_location.dart';
import 'package:aman_store2/features/orders/data/models/order_detils_model.dart';
import 'package:aman_store2/features/orders/prsentation/views/widgets/follow_rating.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'delivery_location_listtile.dart';
import 'follow_order_count.dart';
import 'follow_order_number.dart';
import 'follow_order_scound_table.dart';
import 'follow_order_steper.dart';
import 'follow_order_top_table.dart';
import 'follow_orders_items.dart';
import 'payment_type.dart';

class OrderDetilsSucsessWidget extends StatelessWidget {
  final OrderDetilsModel data;
  const OrderDetilsSucsessWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      delay: const Duration(milliseconds: 150),
      child: CustomScrollView(
        slivers: [
          FollowOrderNumber(orderNo: data.id),
          SliverToBoxAdapter(child: vSizedBox(15)),
          FollowOrderTopTable(
            deliveryDate: data.deliveryDate == null
                ? '_'
                : formatedDate(data.deliveryDate!),
            orderDate: formatedDate(data.createdAt),
            status: data.status,
            total: '${decimalNumer(price: data.totalOrder)}  ${'ry'.tr()}',
          ),
          DeliveryLocationListTile(
              deliveryLocation: data.location == null
                  ? 'لايوجد توصيل'
                  : fullLocation(data.location!)),
          SliverToBoxAdapter(child: vSizedBox(20)),
          FollowOrderStepper(
            status: data.status,
            delveryDate: data.deliveryDate == null
                ? '_'
                : formatedDate(data.deliveryDate!),
            orderDate: formatedDate(data.createdAt),
            orderReadyDate: data.preparingDate == null
                ? '_'
                : formatedDate(data.preparingDate!),
            reciveDate: data.recivedDate == null
                ? '_'
                : formatedDate(data.recivedDate!),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 15.h)),
          FollowOrderCount(count: data.orderItems.length),
          FollowOrdersItems(orderItems: data.orderItems),
          SliverToBoxAdapter(child: SizedBox(height: 15.h)),
          FollowOrderScoundTable(
            deliveryPrice: data.isDelivery==null
                ? '_':
                '${decimalNumer(price: data.deliveryPrice)}  ${'ry'.tr()}'
                 ,
            discount: data.coupon ?? '_',
            paymentMethod: paymentType(data.paymentType),
            total: '${decimalNumer(price: data.totalOrder)}  ${'ry'.tr()}',
          ),
            FlolowRating(
              orderID: data.id,
            ),
          SliverToBoxAdapter(child: vSizedBox(20)),
        ],
      ),
    );
  }
}
