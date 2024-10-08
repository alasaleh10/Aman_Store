import 'package:aman_store2/core/functions/get_app_size.dart';
import 'package:aman_store2/core/widgets/custom_elevated_button.dart';
import 'package:aman_store2/core/widgets/product_item/product_item.dart';
import 'package:aman_store2/features/product_detils/view_model/product_detils_cubit/product_detils_cubit.dart';
import 'package:flutter/material.dart';
import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:aman_store2/features/product_detils/views/widgets/product_price.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/depencency_injection.dart';
import '../../../../core/models/product_model/product_model.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/product_item/add_product_cart_widgets/add_product_cart_to_cart_widget.dart';
import '../../../cart/data/models/display_item_cart.dart';
import '../../../cart/prsentation/view_model/cheek_cart_product_cubit/cheek_cart_p_roduct_cubit.dart';
import '../../data/model/product_detils_model.dart';
import 'product_discription_readmore.dart';
import 'product_images_swiper.dart';

class ProductDetilsSucsessWidget extends StatelessWidget {
  final VoidCallback onSucsess;
  final List<ProductModel> products;
  final Product data;
  const ProductDetilsSucsessWidget(
      {super.key,
      required this.data,
      required this.products,
      required this.onSucsess});

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
        vSizedBox(10),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getAppWidth(context) * 0.15),
          child: CustomElevatedButton(
              radius: 10.r,
              title: 'إضـافة للسلة',
              onPressed: () {
                showModalBottomSheet(
                  enableDrag: false,
                  isDismissible: false,
                  context: context,
                  builder: (_) => BlocProvider(
                    create: (context) =>
                        CheekCartPRoductCubit(gitIt(), data.id)..cheekCart(),
                    child: AddProductCartWidget(
                      onSucsess: onSucsess,
                      displayItemCart: DisplayItemCart(
                          data.id,
                          data.name,
                          data.subName,
                          data.image,
                          data.price,
                          data.quilty,
                          data.quilty,
                          data.priceAfterDiscount),
                    ),
                  ),
                );
              }),
        ),
        vSizedBox(20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(
            'similarProducts'.tr(),
            style:
                AppStyle.textStyleBold18.copyWith(color: AppColors.kBlackColor),
          ),
        ),
        vSizedBox(20),
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
                    onTap: () {
                      context
                          .read<ProductDetilsCubit>()
                          .getSpicificProduct(isFromRefresh: true);
                    },
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
