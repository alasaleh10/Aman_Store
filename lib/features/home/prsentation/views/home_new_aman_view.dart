import 'package:aman_store2/core/di/depencency_injection.dart';
import 'package:aman_store2/core/widgets/custom_appbar.dart';
import 'package:aman_store2/features/home/prsentation/view_model/new_aman_cubit/new_aman_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/new_aman_items.dart';
import 'package:flutter/material.dart';
import 'widgets/new_aman_home_view_continer.dart';

class HomeNewAmanView extends StatelessWidget {
  const HomeNewAmanView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewAmanCubit(gitIt())..getAmanProducts(),
      child: Scaffold(
        appBar: customAppbar('newAmanStore'.tr()),
        body: ListView(
          children: const [
            // HomeNewAmanAppBar(),

            SizedBox(height: 10),
            NewAmanViewContiner(),
            SizedBox(height: 15),
            NewAmanItems(),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
