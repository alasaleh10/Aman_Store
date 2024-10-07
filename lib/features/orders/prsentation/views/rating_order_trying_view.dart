import 'package:aman_store2/core/di/depencency_injection.dart';
import 'package:aman_store2/features/orders/prsentation/view_model/add_rating_cubit/add_rating_cubit.dart';

import 'widgets/rating_order_trying_body_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_styles.dart';

class RatingOrderTryingView extends StatelessWidget {
  final int orderID;
  const RatingOrderTryingView({super.key, required this.orderID});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddRatingCubit(gitIt(),orderID),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'ratingTrying'.tr(),
            style: AppStyle.textStyleSemiBold20,
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(20.h), child: const Divider()),
        ),
        body: const RatingOrderTryingBodyView(),
      ),
    );
  }
}
