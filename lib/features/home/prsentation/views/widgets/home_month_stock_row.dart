import 'package:flutter/material.dart';

import '../../../data/models/test_model.dart';

class MonthStockListRow extends StatelessWidget {
  const MonthStockListRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: IntrinsicHeight(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              testList.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                // child: HomeItemsContiner(testModel: testList[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
