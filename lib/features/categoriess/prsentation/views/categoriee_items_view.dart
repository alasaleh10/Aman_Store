import 'package:aman_store2/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/depencency_injection.dart';
import '../view_model/categoriee_product_cubit/categoriee_products_cubit.dart';
import 'widgets/categoriees_items_view_body.dart';

class CategorieeItemsView extends StatelessWidget {
  final List data;
  //0 cat id
  // 1 cat name
  const CategorieeItemsView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CategorieeProductsCubit(gitIt(), data[0])..getProducts(),
      child: Scaffold(
        appBar: customAppbar(data[1]),
        body: const CategorieeItemsViewBody(),
      ),
    );
  }
}
