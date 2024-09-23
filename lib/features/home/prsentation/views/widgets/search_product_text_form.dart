import 'package:aman_store2/core/helper/sqflite_helper/sqflite_helper.dart';
import 'package:aman_store2/features/home/prsentation/view_model/search_products_cubit/search_produtc_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_text_form_failed.dart';
import '../../../../home_screen/view_model/home_screen_cuibt/home_screen_cubit.dart';

class SearchPRoductTextForm extends StatelessWidget {
  const SearchPRoductTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SearchProdutcCubit>();
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Row(
          children: [
            Expanded(
                child: CustomTextFormField(
              onChanged: (val) {
                if (val.trim().isEmpty) {
                  cubit.clearSearch();
                }
              },
              seffexIcon: GestureDetector(
                onTap: () {
                  cubit.searchProduct();
                },
                child: Icon(
                  Icons.search,
                  color: AppColors.kPrimColor3,
                  size: 25.r,
                ),
              ),
              image: Assets.imagesSearchIcon,
              textFormController: cubit.search,
              title: 'whatyouloking'.tr(),
            )),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () async {
                context
                    .read<HomeScreenCubit>()
                    .changeSearchOrHome(isSearch: false);
                await SqlHelper.closeDatabase();
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'cancel'.tr(),
                    style: AppStyle.textStyleBold18
                        .copyWith(color: AppColors.kPrimColor3),
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.cancel_outlined,
                    color: AppColors.kPrimColor3,
                    size: 25,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
