import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import '../../data/models/teas_caterorie_model.dart';
import 'widgets/home_categorie_item.dart';

class HomeAllCategorisess extends StatelessWidget {
  const HomeAllCategorisess({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'categorises'.tr(),
              style: AppStyle.textStyleSemiBold20,
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const SliverToBoxAdapter(
            child: Divider(),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      MediaQuery.sizeOf(context).width > 550 ? 6 : 4,
                  // crossAxisSpacing: 2,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.9),
              itemBuilder: (context, index) {
                return FittedBox(
                  child: CategorieItem(
                      testCategorieModel: testCategorieList[index]),
                );
              },
              itemCount: testCategorieList.length,
            ),
          )
        ],
      )),
    );
  }
}
