import 'package:aman_store2/core/di/depencency_injection.dart';
import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:aman_store2/features/location/prsentation/view_model/spicific_location_cubit/spicific_location_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/edit_location_view_body.dart';

class EditAddressView extends StatelessWidget {
  final List data;
  const EditAddressView({super.key, required this.data});
// 0 id
// context
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SpicificLocationCubit(gitIt(), data[0])..getSpicificLocation(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'تغيير العنوان',
            style: AppStyle.textStyleBold18.copyWith(
                color: AppColors.kBlackColor, fontWeight: FontWeight.w400),
          ),
        ),
        body: EditLocationViewBody(
          context2: data[1],
        ),
      ),
    );
  }
}
