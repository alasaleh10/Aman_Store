import 'package:aman_store2/core/widgets/failure_page_view.dart';
import 'package:aman_store2/features/home/prsentation/view_model/new_aman_cubit/new_aman_cubit.dart';
import 'package:aman_store2/features/home/prsentation/view_model/new_aman_cubit/new_aman_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/product_item/custom_products_grid_view.dart';
import '../../../../../core/widgets/product_item/product_loading/grid_product_loading.dart';

class NewAmanItems extends StatelessWidget {
  const NewAmanItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewAmanCubit, NewAmanState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          error: (error) => Center(
            child: FailurePageView(
                message: error,
                onTap: () {
                  context.read<NewAmanCubit>().getAmanProducts();
                }),
          ),
          loading: () => const GridProductLoading(shrinkWrap: true),
          sucsess: (model) {
            return CustomProductGridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              listProductModel: model,
              onTap: () {
                context
                    .read<NewAmanCubit>()
                    .getAmanProducts(isFromFavorite: true);
              },
            );
          },
        );
      },
    );
  }
}
