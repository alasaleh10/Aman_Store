import 'package:aman_store2/features/cart/prsentation/views/widgets/cart_delivery_bottom_bar.dart';

import '../../../../core/widgets/custom_appbar.dart';

import 'package:flutter/material.dart';

import 'widgets/cart_delivery_view_body.dart';

class CartDeliveryView extends StatelessWidget {
  final int total;
  const CartDeliveryView({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppbar('التوصيل'),
        bottomNavigationBar: const CartDeliveryBootomBar(),
        body: const CartDeliveryViewBody()
      
        );
  }
}
