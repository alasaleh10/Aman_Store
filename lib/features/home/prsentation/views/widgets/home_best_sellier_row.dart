import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../data/models/test_model.dart';
import 'home_items_continer.dart';

class HomeBestSellerRow extends StatelessWidget {
  const HomeBestSellerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
                  testList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: HomeItemsContiner(
                      testModel: testList[index],
                    ),
                  ))),
        ));
  }
}