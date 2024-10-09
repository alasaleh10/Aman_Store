import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/features/home/prsentation/view_model/home_cubit/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../categoriess/prsentation/views/widgets/home_categorise_text_row.dart';
import '../../../../categoriess/prsentation/views/widgets/home_categorisess_list.dart';
import '../../../data/models/home_model.dart';
import 'home_banner_images.dart';
import 'home_best_sellier_row.dart';
import 'home_month_stock_row.dart';
import 'home_new_aman_continer.dart';

class HomeSucsess extends StatelessWidget {
  final HomeModel data;
  const HomeSucsess({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        HomeBannerImages(
          bannerList: data.banars,
        ),
        const HomeCategoriseTextRow(),
        vSizedBox(16),
        HomeCategoriseListView(
          categories: data.categories,
        ),
        const HomeNewAmanContiner(),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 10),
          child: Text(
            'bestSelingProducts'.tr(),
            style: AppStyle.textStyleBold17,
          ),
        ),
        vSizedBox(16),
        HomeBestSellerRow(
          onSucsess: () {
            context.read<HomeCubit>().getHome(isFromRefreshing: true);
          },
          products: data.bestSellingProducts,
        ),
        vSizedBox(20),
        const Divider(color: AppColors.kOtpBorderColor, thickness: 8),
        vSizedBox(16),
        Padding(
            padding: EdgeInsetsDirectional.only(start: 10.w),
            child: Text('monthStock'.tr(), style: AppStyle.textStyleBold17)),
        vSizedBox(16),
        const MonthStockListRow(),
      ]),
    );
  }
}
