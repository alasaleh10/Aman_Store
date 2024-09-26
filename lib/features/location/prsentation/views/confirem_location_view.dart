import 'package:aman_store2/core/di/depencency_injection.dart';
import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:aman_store2/features/location/prsentation/view_model/confirm_location_cubit/confirm_location_cubit.dart';
import 'package:aman_store2/features/location/prsentation/views/widgets/confirem_location_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/add_location_model.dart';

class ConfirmLocationView extends StatelessWidget {
  final AddLocationModel addLocationModel;

  const ConfirmLocationView({super.key, required this.addLocationModel});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ConfirmLocationCubit(gitIt(), addLocationModel)..onInit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'تــأكيد الموقع ',
            style: AppStyle.textStyleBold18.copyWith(
              color: AppColors.kBlackColor,
            ),
          ),
        ),
        body: ConfirmLocationViewBody(
          addLocationModel: addLocationModel,
        ),
      ),
    );
  }
}
