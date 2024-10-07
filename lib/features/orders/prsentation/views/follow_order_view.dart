import 'package:aman_store2/core/widgets/custom_appbar.dart';
import 'package:aman_store2/features/orders/prsentation/view_model/order_detils_cubit/order_detils_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/depencency_injection.dart';
import 'widgets/follow_order_body_view.dart';

class FollowOrderView extends StatelessWidget {
  final int orderID;
  const FollowOrderView({super.key, required this.orderID});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderDetilsCubit(gitIt(), orderID)..getOrderDetils(),
      child: Scaffold(
        appBar: customAppbar('trackingYourOrder'.tr()),
        body: const FollowOrderBodyView(),
      ),
    );
  }
}
