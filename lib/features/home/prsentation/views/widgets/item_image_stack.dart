import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class ItemImageStack extends StatelessWidget {
  final String image;
  final int id;
  const ItemImageStack({super.key, required this.image, required this.id});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        SizedBox(
          height: 110,
          child: AspectRatio(
            aspectRatio: 3 / 2,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          top: 13,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: AppColors.kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    spreadRadius: .2,
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
                shape: BoxShape.circle),
            child: const Icon(
              Icons.favorite,
              color: AppColors.kPrimColor,
            ),
          ),
        )
      ],
    );
  }
}
