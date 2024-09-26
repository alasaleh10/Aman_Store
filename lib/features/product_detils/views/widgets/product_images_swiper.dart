import 'package:aman_store2/core/functions/get_app_size.dart';
import 'package:aman_store2/core/widgets/cached_network_image_widget.dart';
import 'package:card_swiper/card_swiper.dart';

import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../data/model/product_detils_model.dart';

class PRoductImagesSwiper extends StatefulWidget {
  final List<ProductImages> images;
  final String image;
  const PRoductImagesSwiper(
      {super.key, required this.images, required this.image});

  @override
  State<PRoductImagesSwiper> createState() => _PRoductImagesSwiperState();
}

class _PRoductImagesSwiperState extends State<PRoductImagesSwiper> {
  List<ProductImages> pImages = [];
  @override
  void initState() {
    pImages = widget.images;
    pImages.add(ProductImages(imag: widget.image));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getAppHeight(context) * .3,
      child: Swiper(
        outer: true,
        itemBuilder: (BuildContext context, int index) {
          return AspectRatio(
            aspectRatio: 1,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: CachedImageWidget(
                url: pImages[index].imag,
                boxFit: BoxFit.fill,
              ),
            ),
          );
        },
        scale: .5,
        itemCount: pImages.length,
        pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(
                color: AppColors.kPrimColor.withOpacity(.5),
                activeSize: 13,
                activeColor: AppColors.kPrimColor)),
        autoplay: true,
      ),
    );
  }
}
