import 'package:aman_store2/core/functions/show_snac_bar.dart';
import 'package:aman_store2/core/widgets/failure_page_view.dart';
import 'package:aman_store2/core/widgets/no_internet_page_view.dart';
import 'package:aman_store2/features/my_account/prsentation/view_model/my_account_cubit/my_account_cubit.dart';
import 'package:aman_store2/features/my_account/prsentation/view_model/my_account_cubit/my_account_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/shimar_loading.dart';
import 'account_detils_row.dart';
import 'account_top_row_continers.dart';
import 'edit_account_continer.dart';

class UserDataColumn extends StatelessWidget {
  const UserDataColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyAccountCubit, MyAccountState>(
      listener: (context, state) {
        state.mapOrNull(
            failure2: (value) => showSnackBar(context, message: value.error),
            editImage: (value) {
              showSnackBar(context,
                  message: value.doneModel.message, isError: false);
              context.read<MyAccountCubit>().getMyAccount(isFromEdit: true);
            });
      },
      buildWhen: (previous, current) =>
          (current is! Failure2 && current is! EditImage),
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          sucsess: (userModel) {
            return Column(
              children: [
                AccountDetilsRow(
                  user: userModel,
                ),
                EditAccountContiner(
                  user: userModel,
                ),
                const SizedBox(height: 24),
                AccountRowContiners(
                  user: userModel,
                ),
              ],
            );
          },
          loading: () =>
              ShimarLoading(height: MediaQuery.sizeOf(context).height * .3),
          noInternet: () => NoInternetPage(onTap: () {
            context.read<MyAccountCubit>().getMyAccount();
          }),
          failure: (error) => FailurePageView(
              message: error,
              onTap: () {
                context.read<MyAccountCubit>().getMyAccount();
              }),
        );
      },
    );
  }
}
