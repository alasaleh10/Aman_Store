import 'package:flutter/material.dart';


class MonthStockListRow extends StatelessWidget {
  const MonthStockListRow({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
           5,
            (index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              // child: HomeItemsContiner(testModel: testList[index]),
            ),
          ),
        ),
      ),
    );
  }
}
