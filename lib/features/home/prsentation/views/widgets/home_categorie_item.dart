import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../data/models/teas_caterorie_model.dart';

class CategorieItem extends StatelessWidget {
  final TestCategorieModel testCategorieModel;
  const CategorieItem({super.key, required this.testCategorieModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
          decoration: const BoxDecoration(
              color: AppColors.kPrimColor, shape: BoxShape.circle),
          child: Center(
              child: Image.asset(
            testCategorieModel.image,
            fit: BoxFit.cover,
          )),
        ),
        const SizedBox(height: 10),
        Text(
          testCategorieModel.title,
          style: AppStyle.textStyleRegular16,
        )
      ],
    );
  }
}
