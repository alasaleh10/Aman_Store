import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import '../../../../../core/helper/responsive_helper/screen_height.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../data/models/bannar_model.dart';

class HomeBannerImages extends StatelessWidget {
  final List<BannarsModel> bannerList;
  const HomeBannerImages({super.key, required this.bannerList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight(context) / 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Swiper(
          outer: true,
          itemBuilder: (BuildContext context, int index) {
            return AspectRatio(
              aspectRatio: 2 / 1,
              child: CachedNetworkImage(imageUrl: bannerList[index].image),
            );
          },
          scale: 2,
          itemCount: bannerList.length,
          pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                  color: AppColors.kPrimColor.withOpacity(.5),
                  activeSize: 13,
                  activeColor: AppColors.kPrimColor)),
          autoplay: true,
        ),
      ),
    );
  }
}
