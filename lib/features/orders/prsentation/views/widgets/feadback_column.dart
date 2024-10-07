import 'package:aman_store2/features/orders/prsentation/view_model/add_rating_cubit/add_rating_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'feadback_rating_continer.dart';

class FeadBackColumn extends StatefulWidget {
  const FeadBackColumn({super.key});

  @override
  State<FeadBackColumn> createState() => _FeadBackColumnState();
}

class _FeadBackColumnState extends State<FeadBackColumn> {
  @override
  Widget build(BuildContext context) {
    final cuibt = BlocProvider.of<AddRatingCubit>(context);

        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FeadBackRatingContiner(
                  isActive: cuibt.feabBack == 0,
                  onTap: () {
                    changeFeadBack(0);
                  },
                  title: 'distinctiveProducts'.tr(),
                ),
                SizedBox(width: 20.w),
                FeadBackRatingContiner(
                  horizontal: 20.w,
                  // vertical:,
                  isActive: cuibt.feabBack == 1,
                  onTap: () {
                    changeFeadBack(1);
                  },
                  title: 'fastDelivery'.tr(),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                const Spacer(),
                FeadBackRatingContiner(
                  horizontal: 20.w,
                  // vertical:,
                  isActive: cuibt.feabBack == 2,
                  onTap: () {
                    changeFeadBack(2);
                  },
                  title: 'cheapPrices'.tr(),
                ),
                const Spacer()
              ],
            ),
          ],
        );
  }

  void changeFeadBack(int index) {
    context.read<AddRatingCubit>().feabBack = index;
    setState(() {});
  }
}
