import 'package:aman_store2/core/widgets/custom_appbar.dart';
import 'package:aman_store2/features/cart/prsentation/views/widgets/cart_product_view_body.dart';
import 'package:flutter/material.dart';

import 'widgets/cart_product_bottom_bart.dart';

class CartProdectsView extends StatelessWidget {
  const CartProdectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('منتجات السلة'),
      bottomNavigationBar: const CartProductBottomBar(),
      body: const CartProdectsViewBody(),
    );
  }
}
