import 'package:aman_store2/core/di/depencency_injection.dart';
import 'package:aman_store2/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/product_detils_cubit/product_detils_cubit.dart';
import 'widgets/product_detils_view_body.dart';

class ProductDetilsView extends StatelessWidget {
  final int productId;
  const ProductDetilsView({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductDetilsCubit(gitIt(), productId)..getSpicificProduct(),
      child: Scaffold(
        appBar: customAppbar('تفاصيل المنتج'),
        body: const ProductDetilsViewBody(),
      ),
    );
  }
}
