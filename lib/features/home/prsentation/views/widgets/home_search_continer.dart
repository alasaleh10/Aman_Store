import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../home_screen/view_model/home_screen_cuibt/home_screen_cubit.dart';

class HomeSearchContiner extends StatelessWidget {
  const HomeSearchContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GestureDetector(
          onTap: () {
            BlocProvider.of<HomeScreenCubit>(context)
                .changeSearchOrHome(isSearch: true);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            // height: 55,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: const Color(0xffF9F9F9),
                border: Border.all(color: AppColors.kOtpBorderColor),
                borderRadius: BorderRadius.circular(35)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('whatyouloking'.tr(),
                    style: AppStyle.textStyleBold12.copyWith(
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffC4C4C4))),
                const Icon(
                  Icons.search,
                  size: 30,
                  color: Color(0xffDCDCDC),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
