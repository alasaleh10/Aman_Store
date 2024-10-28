import 'package:aman_store2/core/widgets/failure_page_view.dart';
import 'package:aman_store2/core/widgets/no_internet_page_view.dart';
import 'package:aman_store2/features/categoriess/prsentation/view_model/all_categoriees_cubit/all_categoriees_cubit.dart';
import 'package:aman_store2/features/categoriess/prsentation/view_model/all_categoriees_cubit/all_categoriees_state.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'grid_categoree_loading.dart';
import 'home_categorie_item.dart';

class HomeAllCategorieesViewBody extends StatelessWidget {
  const HomeAllCategorieesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllCategorieesCubit, AllCategorieesState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          loading: () => const GridCategorieeLoading(),
          noInternet: () => NoInternetPage(onTap: () {
            context.read<AllCategorieesCubit>().getAllCategoriess();
          }),
          error: (error) => FailurePageView(
              message: error,
              onTap: () {
                context.read<AllCategorieesCubit>().getAllCategoriess();
              }),
          success: (categoriess) => SlideInUp(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.sizeOf(context).width > 550 ? 6 : 3,
                // mainAxisExtent: 150.h,
              ),
              itemCount: categoriess.categorieeModel.length,
              itemBuilder: (context, index) {
                return CategorieItem(
                    categorieeModel: categoriess.categorieeModel[index]);
              },
            ),
          ),
        );
      },
    );
  }
}
