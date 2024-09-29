import 'package:aman_store2/core/widgets/failure_page_view.dart';
import 'package:aman_store2/core/widgets/no_internet_page_view.dart';
import 'package:aman_store2/features/categoriess/prsentation/view_model/categoriee_product_cubit/categoriee_products_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/product_item/custom_products_grid_view.dart';
import '../../../../../core/widgets/product_item/product_loading/grid_product_loading.dart';
import '../../view_model/categoriee_product_cubit/categoriee_products_cubit.dart';

class CategorieeItemsViewBody extends StatelessWidget {
  const CategorieeItemsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategorieeProductsCubit, CategorieeProductsState>(
      buildWhen: (previous, current) => current is! FromOpreations,
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => const SizedBox(),
            error: (error) => FailurePageView(
                message: error,
                onTap: () {
                  context.read<CategorieeProductsCubit>().getProducts();
                }),
            loading: () => const GridProductLoading(),
            noInternet: () => NoInternetPage(onTap: () {
                  context.read<CategorieeProductsCubit>().getProducts();
                }),
            sucsess: ((products) {
              return CustomProductGridView(
                onTap: () {
                  context
                      .read<CategorieeProductsCubit>()
                      .getProducts(isFromOpretion: true);
                },
                listProductModel: products,
              );
            }));
      },
    );
  }
}
