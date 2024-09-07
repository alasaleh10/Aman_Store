import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/custom_text_form_failed.dart';
import '../../../home_screen/view_model/home_screen_cuibt/home_screen_cubit.dart';
import 'widgets/home_search_item.dart';

class HomeSearchView extends StatelessWidget {
  const HomeSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        BlocProvider.of<HomeScreenCubit>(context)
            .changeSearchOrHome(isSearch: false);
      },
      child: Scaffold(
        body: SafeArea(
            child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: CustomTextFormField(
                      image: Assets.imagesSearchIcon,
                      textFormController: TextEditingController(),
                      title: 'whatyouloking'.tr(),
                    )),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        BlocProvider.of<HomeScreenCubit>(context)
                            .changeSearchOrHome(isSearch: false);
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
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Text('searchResult'.tr(),
                    style: AppStyle.textStyleRegular16),
              ),
            ),
            SliverList.builder(
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: HomeSearchItem(),
                );
              },
              itemCount: 10,
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 15))
          ],
        )),
      ),
    );
  }
}
// refactor Code && complate Search
// 2024/5/12
