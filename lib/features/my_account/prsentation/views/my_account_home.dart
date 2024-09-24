import 'package:aman_store2/features/my_account/prsentation/views/widgets/user_data_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../home_screen/view_model/home_screen_cuibt/home_screen_cubit.dart';
import 'widgets/account_list_tile_column.dart';

class MyAccountHome extends StatelessWidget {
  const MyAccountHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              BlocProvider.of<HomeScreenCubit>(context).goLastPage();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: ListView(
        children: const [
          Divider(color: AppColors.kOtpBorderColor),
          UserDataColumn(),
          AccountListTileColumn()
        ],
      ),
    );
  }
}
// 
