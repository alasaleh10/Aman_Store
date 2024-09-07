import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../home_screen/view_model/home_screen_cuibt/home_screen_cubit.dart';
import 'widgets/account_detils_row.dart';
import 'widgets/account_list_tile_column.dart';
import 'widgets/account_top_row_continers.dart';
import 'widgets/edit_account_continer.dart';

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
          AccountDetilsRow(),
          EditAccountContiner(),
          SizedBox(height: 24),
          AccountRowContiners(),
          AccountListTileColumn()
        ],
      ),
    );
  }
}
// 