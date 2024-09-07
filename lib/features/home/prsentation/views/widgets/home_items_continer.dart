import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../data/models/test_model.dart';
import 'item_add_to_cart_button.dart';
import 'item_image_stack.dart';
import 'items_title_and_price.dart';

class HomeItemsContiner extends StatelessWidget {
  final TestModel testModel;
  const HomeItemsContiner({super.key, required this.testModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.kOtpBorderColor),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ItemImageStack(
            image: testModel.image,
            id: 2,
          ),
          const SizedBox(height: 8),
          ItemsTitleAndPrice(
            title: testModel.title,
            subTitle: testModel.subTitile,
            price: '${testModel.price}',
          ),
          const SizedBox(height: 8),
          const ItemAddToCartButton(id: 2)
        ],
      ),
    );
  }
}
