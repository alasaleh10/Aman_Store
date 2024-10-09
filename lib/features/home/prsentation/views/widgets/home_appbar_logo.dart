import 'package:aman_store2/features/home/prsentation/view_model/home_cubit/home_cubit.dart';
import 'package:aman_store2/features/home/prsentation/view_model/home_cubit/home_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helper/responsive_helper/screen_height.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class HomeAppBarLogo extends StatelessWidget {
  const HomeAppBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.imagesLogo,
          height: screenHeight(context) * .09,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.location_on,
              color: AppColors.kPrimColor,
            ),
            Text(
              'delivAddress'.tr(),
              style: AppStyle.textStyleBold12,
            ),
            BlocBuilder<HomeCubit, HomeState>(
              buildWhen: (previous, current) => current is Sucsess,
              builder: (context, state) {
                return Text(
                  context.read<HomeCubit>().location ?? '',
                  style: AppStyle.textStyleRegular14
                      .copyWith(fontWeight: FontWeight.w400),
                );
              },
            )
          ],
        ),
      ],
    );
  }
}
