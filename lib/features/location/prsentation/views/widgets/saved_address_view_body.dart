import 'package:aman_store2/features/location/prsentation/view_model/my_address_cubit/my_address_cubit.dart';
import 'package:aman_store2/features/location/prsentation/view_model/my_address_cubit/my_address_state.dart';
import 'package:aman_store2/features/location/prsentation/views/widgets/get_my_locations_sucsess.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/failure_page_view.dart';
import '../../../../../core/widgets/loading_view_page.dart';
import '../../../../../core/widgets/no_internet_page_view.dart';

class SavedAddressViewBody extends StatelessWidget {
  const SavedAddressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyAddressCubit, MyAddressState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (locations) {
            return MyLocationsSucsessWidget(locations: locations);
          },
          failure: (message) => FailurePageView(
            message: message,
            onTap: () {
              context.read<MyAddressCubit>().getMyLocations();
            },
          ),
          loading: () => const LoadingViewPage(),
          noInternet: () => NoInternetPage(
            onTap: () {
              context.read<MyAddressCubit>().getMyLocations();
            },
          ),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
