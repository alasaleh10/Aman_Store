import 'package:aman_store2/core/di/depencency_injection.dart';
import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:aman_store2/core/widgets/failure_page_view.dart';
import 'package:aman_store2/core/widgets/no_internet_page_view.dart';
import 'package:aman_store2/features/home/prsentation/view_model/search_products_cubit/search_produtc_cubit.dart';
import 'package:aman_store2/features/home/prsentation/view_model/search_products_cubit/search_produtc_state.dart';
import 'package:aman_store2/features/home/prsentation/views/widgets/saved_search_list.dart';
import 'package:aman_store2/features/home/prsentation/views/widgets/search_product_text_form.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/app_styles.dart';
import 'widgets/home_search_item.dart';
import 'widgets/home_search_loading.dart';

class HomeSearchView extends StatelessWidget {
  const HomeSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchProdutcCubit(gitIt())..getSavedSearched(),
      child: Scaffold(
        body: SafeArea(
            child: CustomScrollView(
          slivers: [
            const SearchPRoductTextForm(),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('searchResult'.tr(),
                        style: AppStyle.textStyleRegular16),
                    BlocBuilder<SearchProdutcCubit, SearchProdutcState>(
                      builder: (context, state) {
                        if (state is SavedSearch) {
                          return TextButton(
                              onPressed: () {
                                context
                                    .read<SearchProdutcCubit>()
                                    .removeAllSearch();
                              },
                              child: Text(
                                'مسح الــسجل',
                                style: AppStyle.textStyleRegular16
                                    .copyWith(color: AppColors.kPrimColor3),
                              ));
                        } else {
                          return const SizedBox();
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
            BlocBuilder<SearchProdutcCubit, SearchProdutcState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SliverToBoxAdapter(child: SizedBox()),
                  error: (error) => SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: FailurePageView(
                            message: error,
                            onTap: () {
                              context
                                  .read<SearchProdutcCubit>()
                                  .searchProduct();
                            }),
                      )),
                  loading: () => const HomeSearchLoading(),
                  noInternet: () => SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: NoInternetPage(onTap: () {
                          context.read<SearchProdutcCubit>().searchProduct();
                        }),
                      )),
                  sucsess: (listProductModel) {
                    return SliverList.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: HomeSearchItem(
                            product: listProductModel.productModel[index],
                          ),
                        );
                      },
                      itemCount: listProductModel.productModel.length,
                    );
                  },
                  savedSearch: (savedSearch) =>
                      SavedSearchList(savedSearch: savedSearch),
                );
              },
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 15))
          ],
        )),
      ),
    );
  }
}
