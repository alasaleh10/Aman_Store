import 'package:aman_store2/core/widgets/product_item/product_item.dart';
import 'package:aman_store2/features/product_detils/view_model/product_detils_cubit/product_detils_cubit.dart';
import 'package:flutter/material.dart';
import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:aman_store2/features/product_detils/views/widgets/product_price.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/models/product_model/product_model.dart';
import '../../../../core/utils/app_colors.dart';
import '../../data/model/product_detils_model.dart';
import 'product_discription_readmore.dart';
import 'product_images_swiper.dart';

class ProductDetilsSucsessWidget extends StatelessWidget {
  final List<ProductModel> products;
  final Product data;
  const ProductDetilsSucsessWidget(
      {super.key, required this.data, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text(
            data.subName,
            style: AppStyle.textStyleRegular16.copyWith(
                fontWeight: FontWeight.bold, color: AppColors.kPrimColor),
          ),
          subtitle: Text(
            data.name,
            style: AppStyle.textStyleBold22.copyWith(height: 2),
          ),
        ),
        vSizedBox(25),
        const Divider(color: AppColors.kOtpBorderColor),
        vSizedBox(20),
        PRoductImagesSwiper(image: data.image, images: data.images),
        ProductPrice(
          discount: data.discount,
          price: data.price,
          priceAfterDiscount: data.priceAfterDiscount,
        ),
        vSizedBox(25),
        const Divider(color: AppColors.kOtpBorderColor),
        vSizedBox(15),
        ProductDiscriptionReadMore(discription: data.description),
        vSizedBox(10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(
            'similarProducts'.tr(),
            style:
                AppStyle.textStyleBold18.copyWith(color: AppColors.kBlackColor),
          ),
        ),
        vSizedBox(10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: IntrinsicHeight(
            child: Row(
              children: List.generate(
                products.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProductItem(
                    onTap2: () {
                      context
                          .read<ProductDetilsCubit>()
                          .getSpicificProduct(newproductId: products[index].id);
                    },
                    isDetils: true,
                    product: products[index],
                    onTap: () {},
                  ),
                ),
              ),
            ),
          ),
        ),
        vSizedBox(20)
      ],
    );
  }
}
