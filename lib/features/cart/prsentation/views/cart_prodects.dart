
import 'widgets/p_cart_add_more.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../home/prsentation/views/widgets/home_search_item.dart';
import 'widgets/cart_next_button.dart';

class CartProdectsView extends StatelessWidget {
  const CartProdectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList.builder(
          itemBuilder: (context, index) {
            return const Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: HomeSearchItem());
          },
          itemCount: 3,
        ),
        SliverToBoxAdapter(child: SizedBox(height: 25.h)),
        const PCartAddMore(),
        SliverToBoxAdapter(
            child: CartNextButton(
          onPressed: () {},
          price: '3600',
        ))
      ],
    );
  }
}
