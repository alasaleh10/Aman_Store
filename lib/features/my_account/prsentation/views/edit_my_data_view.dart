import 'package:aman_store2/core/di/depencency_injection.dart';
import 'package:aman_store2/core/widgets/custom_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/edit_my_account_cubit/edit_my_account_cubit.dart';
import 'widgets/edit_my_data_view_body.dart';

class EditMyDataView extends StatelessWidget {
  // 0 contedx
  // 1 pushModel
  final List data;
  const EditMyDataView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditMyAccountCubit(gitIt(), data[1])..onInit(),
      child: Scaffold(
        appBar: customAppbar('editmyData'.tr()),
        body:  EditMyDataViewBody(
          context2: data[0],
        ),
      ),
    );
  }
}
