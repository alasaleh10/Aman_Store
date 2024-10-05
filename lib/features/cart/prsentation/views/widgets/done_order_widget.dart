import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/routers/app_routers.dart';
import 'package:aman_store2/core/utils/app_assets.dart';
import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:aman_store2/core/widgets/custom_elevated_button.dart';
import 'package:aman_store2/features/cart/prsentation/views/widgets/done_icon_continer.dart';
import 'package:aman_store2/features/home_screen/view_model/home_screen_cuibt/home_screen_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/add_order_done_model.dart';
import 'done_order_row.dart';

class DoneOrderWidget extends StatelessWidget {
  final AddOrderDoneModel doneModel;
  const DoneOrderWidget({super.key, required this.doneModel});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Container(
        color: AppColors.kPrimColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const DoneIconContiner(),
            vSizedBox(15),
            Text(
              'orderDone'.tr(),
              style: AppStyle.textStyleBold25,
            ),
            vSizedBox(15),
            Text(
              'orderWillDelivered'.tr(),
              style: AppStyle.textStyleSemiBold20.copyWith(
                  color: AppColors.kWhiteColor, fontWeight: FontWeight.w300),
            ),
            vSizedBox(8),
            DonOrderRow(
              image: Assets.imagesOrders,
              subtitle: '# ${doneModel.id}',
              title: 'رقم الطلب',
            ),
            vSizedBox(8),
            DonOrderRow(
              image: Assets.imagesOrdertime,
              subtitle: DateFormat('yyyy/MM/dd - h:mm a', 'en')
                  .format(DateTime.parse(doneModel.createdAt)),
              title: 'وقـت الطلب',
            ),
            vSizedBox(22),
            CustomElevatedButton(
                borderColor: AppColors.kWhiteColor,
                isVisitor: true,
                backgroundColor: AppColors.kPrimColor,
                title: 'العودة الى الرئيسية',
                onPressed: () {
                  context.read<HomeScreenCubit>().index = 0;
                  context.goNamed(AppRouters.homeScreenView);
                }),
            vSizedBox(15),
            CustomElevatedButton(
                borderColor: AppColors.kWhiteColor,
                // isVisitor: true,
                textColor: AppColors.kPrimColor,
                backgroundColor: AppColors.kWhiteColor,
                title: 'تتبع الطلب ',
                onPressed: () {
                  // context
                })
          ],
        ),
      ),
    );
  }
}
