import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../../../../../core/helper/responsive_helper/screen_height.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';

class HomeBannerImages extends StatelessWidget {
  const HomeBannerImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height:screenHeight(context) / 4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Swiper(
            outer: true,
            itemBuilder: (BuildContext context, int index) {
              return AspectRatio(
                aspectRatio: 2 / 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage(Assets.imagesTestBanar),
                        fit: BoxFit.fill),
                  ),
                ),
              );
            },
            scale: 2,
            itemCount: 4,
            pagination: SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                    color: AppColors.kPrimColor.withOpacity(.5),
                    activeSize: 13,
                    activeColor: AppColors.kPrimColor)),
            autoplay: true,
          ),
        ),
      ),
    );
  }
}