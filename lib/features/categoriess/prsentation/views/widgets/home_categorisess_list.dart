import 'package:flutter/material.dart';

class HomeCategoriseListView extends StatelessWidget {
  const HomeCategoriseListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: IntrinsicHeight(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
              4,
              (index) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.5),
                  child: Text('f')
                  //  CategorieItem(testCategorieModel: testCategorieList[index]),
                  )),
        ),
      ),
    ));
  }
}
