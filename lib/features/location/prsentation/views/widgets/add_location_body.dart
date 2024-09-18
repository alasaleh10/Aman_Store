import 'package:aman_store2/core/routers/app_routers.dart';
import 'package:aman_store2/features/location/data/models/add_location_model.dart';
import 'package:aman_store2/features/location/prsentation/views/widgets/custom_divider_row.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/functions/cheek_permision.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_loading_stack.dart';
import '../../../../../core/widgets/erroe_stacke.dart';
import '../../../../../core/widgets/no_internet_stack.dart';
import '../../view_model/add_location_cuibt/add_location_cubit.dart';
import '../../view_model/add_location_cuibt/add_location_state.dart';
import 'google_map_stack.dart';

class AddLocationBodyView extends StatelessWidget {
  final int index;
  const AddLocationBodyView({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final cuibt = BlocProvider.of<AddLocationCubit>(context);
    return BlocListener<AddLocationCubit, AddLocationState>(
      listener: (context, state) {
        if (isDialogOpen(context)) {
          context.pop();
        }
        state.whenOrNull(
            loading: () => showLoadingStack(context),
            failure: (error) {
              showErrorStack(context, 'الموقع الجغرافي غير مفعل', () {
                cuibt.getCurrentLocation();
              });
            },
            noPermision: () {
              showErrorStack(context, 'أعط صلاحيات الوصول للموقع الجغرافي',
                  () async {
                await checkLocationPermission();

                // cuibt.getCurrentLocation();
              });
            });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: GoogleMapStack(),
          ),
          CustomDividerRow(cubit: cuibt),
          const SizedBox(height: 7),
          BlocBuilder<AddLocationCubit, AddLocationState>(
            builder: (context, state) {
              return state.maybeWhen(
                sucsess: (lat, long, location) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 15),
                        child: Text(
                          'currentLocation'.tr(),
                          style: AppStyle.textStyleRegular16.copyWith(
                              fontWeight: FontWeight.w300,
                              color: const Color(0xff767C92)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 15),
                        child: Text(
                          cuibt.myCurrentLocation ?? '',
                          style: AppStyle.textStyleRegular16,
                          maxLines: 4,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Align(
                          alignment: Alignment.center,
                          child: CustomElevatedButton(
                              fontSize: 15.sp,
                              title: 'confirmLocation'.tr(),
                              onPressed: () {
                                AddLocationModel addLocationModel =
                                    AddLocationModel(
                                  index: index,
                                  name: location,
                                  lat: lat,
                                  lag: long,
                                );

                                context.pushNamed(
                                    AppRouters.confirmLocationView,
                                    extra: addLocationModel);
                                // cuibt.confirmLocation();
                              })),
                    ],
                  );
                },
                orElse: () {
                  return SizedBox(
                    height: 50.h,
                  );
                },
              );
            },
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
