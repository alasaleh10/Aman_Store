import 'package:aman_store2/core/widgets/failure_page_view.dart';
import 'package:aman_store2/core/widgets/loading_view_page.dart';
import 'package:aman_store2/core/widgets/no_internet_page_view.dart';
import 'package:aman_store2/features/product_detils/view_model/product_detils_cubit/product_detils_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/product_detils_cubit/product_detils_cubit.dart';
import 'product_detils_sucsess_widget.dart';

class ProductDetilsViewBody extends StatelessWidget {
  const ProductDetilsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetilsCubit, ProductDetilsState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          loading: () => const LoadingViewPage(),
          noInternet: () => NoInternetPage(onTap: () {
            context.read<ProductDetilsCubit>().getSpicificProduct();
          }),
          loaded: (model) => ProductDetilsSucsessWidget(
            products: model.similerProducts,
            data: model.product,
          ),
          error: (error) => FailurePageView(
              message: error,
              onTap: () {
                context.read<ProductDetilsCubit>().getSpicificProduct();
              }),
        );
      },
    );
  }
}
