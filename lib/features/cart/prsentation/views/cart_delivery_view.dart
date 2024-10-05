import 'package:aman_store2/features/cart/prsentation/view_model/cart_delivery_cubit/cart_delivery_cubit.dart';
import 'package:aman_store2/features/cart/prsentation/views/widgets/cart_delivery_bottom_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_appbar.dart';

import 'package:flutter/material.dart';

import 'widgets/cart_delivery_view_body.dart';

class CartDeliveryView extends StatefulWidget {
  final List data;
  const CartDeliveryView({super.key, required this.data});

  @override
  State<CartDeliveryView> createState() => _CartDeliveryViewState();
}

class _CartDeliveryViewState extends State<CartDeliveryView> {
  @override
  void initState() {
    context.read<CartDeliveryCubit>().total = widget.data[0];
    context.read<CartDeliveryCubit>().items=widget.data[1];
    super.initState();
  }

// 0 totl price
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppbar('التوصيل'),
        bottomNavigationBar: const CartDeliveryBootomBar(),
        body: const CartDeliveryViewBody());
  }
}
