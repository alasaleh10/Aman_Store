import 'package:aman_store2/core/widgets/custom_appbar.dart';
import 'package:aman_store2/features/cart/prsentation/view_model/cart_payment_cubit/cart_payment_cubit.dart';
import 'package:aman_store2/features/cart/prsentation/views/widgets/cart_payment_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/go_payment_model.dart';
import 'widgets/cart_payment_bootombar.dart';

class CartPaymentView extends StatefulWidget {
  final GoPaymentModel goPaymentModel;
  const CartPaymentView({super.key, required this.goPaymentModel});

  @override
  State<CartPaymentView> createState() => _CartPaymentViewState();
}

class _CartPaymentViewState extends State<CartPaymentView> {
  @override
  void initState() {
    context.read<CartPaymentCubit>().cartModel =
        widget.goPaymentModel.cartModel;
    context.read<CartPaymentCubit>().goPaymentModel = widget.goPaymentModel;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('الدفــع'),
      bottomNavigationBar: const CartPaymentBottomBar(),
      body: const CartPaymentViewBody(),
    );
  }
}
