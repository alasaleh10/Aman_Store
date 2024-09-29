import 'package:flutter/material.dart';

import 'cart_stepper_row_continers.dart';

class CartStepper extends StatelessWidget {
  final int index;
  const CartStepper({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CartStepperRowContiners(
          index: index,
        ),
        const Divider()
      ],
    );
  }
}
