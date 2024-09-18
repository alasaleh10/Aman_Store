import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../view_model/add_location_cuibt/add_location_cubit.dart';

class GetMyLocationContiner extends StatelessWidget {
  const GetMyLocationContiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<AddLocationCubit>().getCurrentLocation();
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: AppColors.kOtpBorderColor,
                spreadRadius: 1,
                blurRadius: 30,
                offset: Offset(0, 0),
              )
            ],
            borderRadius: BorderRadius.circular(8),
            color: AppColors.kWhiteColor),
        child: const Icon(
          Icons.location_searching_rounded,
          size: 30,
        ),
      ),
    );
  }
}
