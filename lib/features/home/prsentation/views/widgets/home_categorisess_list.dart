import 'package:flutter/material.dart';

import '../../../data/models/teas_caterorie_model.dart';
import 'home_categorie_item.dart';



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
              testCategorieList.length,
              (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.5),
                    child: CategorieItem(testCategorieModel: testCategorieList[index]),
                  )),
        ),
      ),
    ));
  }
}
