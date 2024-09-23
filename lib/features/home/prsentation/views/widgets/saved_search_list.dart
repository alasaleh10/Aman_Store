import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:aman_store2/features/home/prsentation/view_model/search_products_cubit/search_produtc_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/search_model.dart';

class SavedSearchList extends StatelessWidget {
  final List<SearchModel> savedSearch;
  const SavedSearchList({super.key, required this.savedSearch});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return savedSearch[index].search == null
            ? const SizedBox()
            : SavedSearchItem(
                searchModel: savedSearch[index],
              );
      },
      itemCount: savedSearch.length,
    );
  }
}

class SavedSearchItem extends StatelessWidget {
  final SearchModel searchModel;
  const SavedSearchItem({super.key, required this.searchModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
      child: GestureDetector(
        onTap: () {
          context.read<SearchProdutcCubit>().search.text = searchModel.search!;
          context.read<SearchProdutcCubit>().searchProduct();
        },
        child: Row(children: [
          Expanded(
              child: Text(
            searchModel.search!,
            style: AppStyle.textStyleRegular16,
          )),
          const Icon(Icons.arrow_outward_rounded)
        ]),
      ),
    );
  }
}
