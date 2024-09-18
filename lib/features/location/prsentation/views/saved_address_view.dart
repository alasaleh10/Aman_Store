import 'package:aman_store2/core/di/depencency_injection.dart';
import 'package:aman_store2/features/location/prsentation/view_model/my_address_cubit/my_address_cubit.dart';
import 'package:aman_store2/features/location/prsentation/views/widgets/saved_address_view_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_styles.dart';

class SavedAddressView extends StatelessWidget {
  const SavedAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyAddressCubit(gitIt())..getMyLocations(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'mySavedAddress'.tr(),
            style: AppStyle.textStyleSemiBold20,
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(20.h), child: const Divider()),
        ),
        body: const SavedAddressViewBody(),
      ),
    );
  }
}
