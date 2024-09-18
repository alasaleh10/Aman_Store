import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'home_drwer.dart';
import 'widgets/custom_home_appbar.dart';
import 'widgets/home_banner_images.dart';
import 'widgets/home_best_sellier_row.dart';
import '../../../categoriess/prsentation/views/widgets/home_categorise_text_row.dart';
import '../../../categoriess/prsentation/views/widgets/home_categorisess_list.dart';
import 'widgets/home_month_stock_row.dart';
import 'widgets/home_new_aman_continer.dart';
import 'widgets/home_search_continer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      drawer: const HomeDrwer(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomHomeAppBar(),
            const HomeSearchContiner(),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            const HomeBannerImages(),
            const HomeCategoriseTextRow(),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            const HomeCategoriseListView(),
            const HomeNewAmanContiner(),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 10),
                child: Text(
                  'bestSelingProducts'.tr(),
                  style: AppStyle.textStyleBold17,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            const HomeBestSellerRow(),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
            const SliverToBoxAdapter(
              child: Divider(color: AppColors.kOtpBorderColor, thickness: 8),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 10),
                  child: Text('monthStock'.tr(),
                      style: AppStyle.textStyleBold17)),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            const MonthStockListRow(),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
           
          ],
        ),
      ),
    );
  }
}
