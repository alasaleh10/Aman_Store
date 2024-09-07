import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class AccountImageStack extends StatelessWidget {
  final String image;
  final VoidCallback onTap;
  const AccountImageStack(
      {super.key, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.bottomStart,
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(image),
        ),
        Positioned(
          bottom: -10,
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.kPrimColor.withOpacity(.5),
                    spreadRadius: 1,
                    blurRadius: 20,
                    offset: const Offset(0, 0),
                  ),
                ],
                color: AppColors.kPrimColor.withOpacity(.2),
                shape: BoxShape.circle),
            child: GestureDetector(
              onTap: onTap,
              child: Center(
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.kPrimColor),
                  child: const Icon(
                    Icons.edit,
                    size: 15,
                    color: AppColors.kWhiteColor,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
