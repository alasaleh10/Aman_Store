import 'package:flutter/material.dart';

import '../../../data/models/all_categoriess_model.dart';
import 'home_categorie_item.dart';

class HomeCategoriseListView extends StatelessWidget {
  final List<CategorieeModel> categories;
  const HomeCategoriseListView({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            categories.length,
            (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.5),
                  child: CategorieItem(categorieeModel: categories[index]),
                )),
      ),
    );
  }
}
