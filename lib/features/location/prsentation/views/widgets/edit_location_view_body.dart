import 'package:aman_store2/core/widgets/failure_page_view.dart';
import 'package:aman_store2/core/widgets/loading_view_page.dart';
import 'package:aman_store2/core/widgets/no_internet_page_view.dart';
import 'package:aman_store2/features/location/prsentation/view_model/my_address_cubit/my_address_cubit.dart';
import 'package:aman_store2/features/location/prsentation/view_model/spicific_location_cubit/spicific_location_cubit.dart';
import 'package:aman_store2/features/location/prsentation/view_model/spicific_location_cubit/spicific_location_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_loading_stack.dart';
import '../../../../../core/widgets/erroe_stacke.dart';
import '../../../../../core/widgets/no_internet_stack.dart';
import 'get_spicific_location_sucsess.dart';

class EditLocationViewBody extends StatelessWidget {
  final BuildContext context2;
  const EditLocationViewBody({super.key, required this.context2});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SpicificLocationCubit, SpicificLocationState>(
      listenWhen: (previous, current) =>
          current is Loaded2 ||
          current is NoInternet2 ||
          current is Error2 ||
          current is Loading2,
      buildWhen: (previous, current) => !(current is Loaded2 ||
          current is NoInternet2 ||
          current is Error2 ||
          current is Loading2),
      listener: (context, state) {
        if (isDialogOpen(context)) {
          context.pop();
        }
        state.mapOrNull(
          error2: (value) {
            showErrorStack(context, value.errorMessage, () {});
          },
          loading2: (value) {
            showLoadingStack(context);
          },
          noInternet2: (value) {
            showNoInternet(context, () {});
          },
          loaded2: (value) {
            context2.read<MyAddressCubit>().getMyLocations(isFromRefresh: true);
            context.pop();
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          error: (errorMessage) => FailurePageView(
              message: errorMessage,
              onTap: () => {
                    context.read<SpicificLocationCubit>().getSpicificLocation()
                  }),
          noInternet: () => NoInternetPage(
              onTap: () => {
                    context.read<SpicificLocationCubit>().getSpicificLocation()
                  }),
          loading: () => const LoadingViewPage(),
          loaded: (locationModel) => SpicificLocationSucsess(
            location: locationModel,
          ),
        );

        //  return state.mapOrNull();

        // return ListView();
      },
    );
  }
}
