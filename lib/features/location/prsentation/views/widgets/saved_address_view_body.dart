import 'package:aman_store2/features/location/prsentation/view_model/my_address_cubit/my_address_cubit.dart';
import 'package:aman_store2/features/location/prsentation/view_model/my_address_cubit/my_address_state.dart';
import 'package:aman_store2/features/location/prsentation/views/widgets/get_my_locations_sucsess.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/functions/show_snac_bar.dart';
import '../../../../../core/widgets/failure_page_view.dart';
import '../../../../../core/widgets/no_internet_page_view.dart';
import 'locations_loading.dart';

class SavedAddressViewBody extends StatelessWidget {
  final int? index;
  const SavedAddressViewBody({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyAddressCubit, MyAddressState>(
      listener: (context, state) {
        state.mapOrNull(
          failure2: (value) => showSnackBar(context, message: value.message),
          loading2: (value) => showSnackBar(context,
              message: 'جاري تحديث البيانات', isError: false),
          success2: (value) {
            if (index == 1) {
              context.pop(true);
            } else if (index == 2) {
              context.pop(true);
            } else {
              showSnackBar(context, message: value.message, isError: false);
              context
                  .read<MyAddressCubit>()
                  .getMyLocations(isFromRefresh: true);
            }
          },
        );
      },
      buildWhen: (previous, current) =>
          current is! Loading2 && current is! Success2 && current is! Failure2,
      builder: (context, state) {
        return state.maybeWhen(
          success: (locations) {
            return MyLocationsSucsessWidget(
                index2: index, locations: locations);
          },
          failure: (message) => FailurePageView(
            message: message,
            onTap: () {
              context.read<MyAddressCubit>().getMyLocations();
            },
          ),
          loading: () => const LocationsLoading(),
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
