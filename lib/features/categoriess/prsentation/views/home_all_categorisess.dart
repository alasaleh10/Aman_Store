import 'package:aman_store2/core/di/depencency_injection.dart';
import 'package:aman_store2/core/widgets/custom_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../view_model/all_categoriees_cubit/all_categoriees_cubit.dart';
import 'widgets/home_all_categoriess_view_body.dart';

class HomeAllCategorisess extends StatelessWidget {
  const HomeAllCategorisess({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllCategorieesCubit(gitIt())..getAllCategoriess(),
      child: Scaffold(
          appBar: customAppbar('categorises'.tr()),
          body: const HomeAllCategorieesViewBody()

          // CustomScrollView(
          //           slivers: [

          // const SliverToBoxAdapter(child: SizedBox(height: 15)),
          // SliverPadding(
          //   padding: const EdgeInsets.symmetric(horizontal: 10),
          //   sliver:
          // SliverGrid.builder(
          //     gridDelegate: ,
          //     itemBuilder: (context, index) {
          //       return;
          //     },
          //     itemCount: testCategorieList.length,
          //   ),
          // )
          //           ],
          //         ),
          ),
    );
  }
}
