import 'package:aman_store2/core/functions/decimal_number.dart';
import 'package:aman_store2/features/auth/data/model/user_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../home_screen/view_model/home_screen_cuibt/home_screen_cubit.dart';
import 'account_top_continer.dart';

class AccountRowContiners extends StatelessWidget {
  final UserModel user;
  const AccountRowContiners({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        children: [
          AccountTopContiner(
            imageColor: AppColors.kPrimColor,
            image: Assets.imagesOrdernumber,
            title: '${user.order ?? 0}',
            subTitle: 'orders'.tr(),
            onTap: () {
              BlocProvider.of<HomeScreenCubit>(context).changePage(index: 3);
            },
            backgroundColor: const Color(0xffFEF8E2),
          ),
          const SizedBox(width: 10),
          AccountTopContiner(
            imageColor: const Color(0xff10B982),
            image: Assets.imagesWallet,
            title: '${decimalNumer(price: user.user.credit)} ${'ry2'.tr()}',
            subTitle: 'balance'.tr(),
            onTap: () {},
            backgroundColor: const Color(0xffEAFEF5),
          ),
          const SizedBox(width: 10),
          AccountTopContiner(
            imageColor: const Color(0xff5B6FEC),
            image: Assets.imagesPoint,
            title: user.user.points.toString(),
            subTitle: 'loyaltyPoints'.tr(),
            onTap: () {},
            backgroundColor: const Color(0xffF5F9FC),
          )
        ],
      ),
    );
  }
}
