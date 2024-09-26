import 'package:aman_store2/core/widgets/failure_page_view.dart';
import 'package:aman_store2/core/widgets/loading_view_page.dart';
import 'package:aman_store2/core/widgets/no_internet_page_view.dart';
import 'package:aman_store2/core/widgets/product_item/custom_products_grid_view.dart';
import 'package:aman_store2/features/favorite/view_model/favorite_cubit/favorite_cubit.dart';
import 'package:aman_store2/features/favorite/view_model/favorite_cubit/favorite_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      buildWhen: (previous, current) => current is! FromOpreations,
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => const SizedBox(),
          loading: (_) => const LoadingViewPage(),
          error: (value) => FailurePageView(
              message: value.error,
              onTap: () {
                context.read<FavoriteCubit>().getFavorite();
              }),
          noInternet: (value) => NoInternetPage(onTap: () {
            context.read<FavoriteCubit>().getFavorite();
          }),
          sucsess: (products) => CustomProductGridView(
            listProductModel: products.product,
            onTap: () {
              context.read<FavoriteCubit>().getFavorite(isFromOPreations: true);
            },
          ),
        );
      },
    );
  }
}
