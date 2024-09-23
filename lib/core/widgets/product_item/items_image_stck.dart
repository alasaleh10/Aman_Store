import 'package:aman_store2/core/functions/show_snac_bar.dart';
import 'package:aman_store2/features/favorite/view_model/favorite_options_cubit/favorite_options_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../features/favorite/view_model/favorite_options_cubit/favorite_options_cubit.dart';
import '../cached_network_image_widget.dart';

class ItemImageStack extends StatelessWidget {
  final VoidCallback onTap;
  final bool isFaviorte;
  final String image;
  final int id;
  const ItemImageStack({
    super.key,
    required this.image,
    required this.id,
    required this.isFaviorte,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final cubit2 = context.read<FavoriteOptionsCubit>();
    return SizedBox(
      height: 130.h,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.center,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: CachedImageWidget(url: image)),
          ),
          Positioned(
            top: 13.h,
            left: 1.w,
            child: BlocListener<FavoriteOptionsCubit, FavoriteOptionsState>(
              listener: (context, state) {
                state.mapOrNull(
                  error: (value) => showSnackBar(context,
                      message: value.error, isError: true),
                  sucsess: (value) {
                    showSnackBar(context,
                        message: value.message, isError: false);
                    onTap.call();
                  },
                );
              },
              child: GestureDetector(
                onTap: () {
                  if (isFaviorte) {
                    cubit2.removeFavorite();
                  } else {
                    cubit2.addFavorite();
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: AppColors.kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.3),
                        spreadRadius: .2,
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      isFaviorte ? Icons.favorite : Icons.favorite_outline,
                      color: AppColors.kPrimColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
