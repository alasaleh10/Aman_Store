import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/models/product_model/product_model.dart';
import '../../../../../core/widgets/product_item/product_item.dart';

class HomeBestSellerRow extends StatelessWidget {
  final VoidCallback onSucsess;
  final List<ProductModel> products;
  const HomeBestSellerRow({super.key, required this.products, required this.onSucsess});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: IntrinsicHeight(
            child: Row(
                  children: List.generate(
            products.length,
            (index) =>  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ProductItem(
                    product: products[index],
                    onTap:onSucsess,
                  )
                ))),
          ),
        );
  }
}
