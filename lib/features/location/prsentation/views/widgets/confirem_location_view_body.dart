import 'package:aman_store2/core/routers/app_routers.dart';
import 'package:aman_store2/core/validations/regular_exceptions.dart';
import 'package:aman_store2/core/widgets/custom_elevated_button.dart';
import 'package:aman_store2/core/widgets/custom_text_form_failed.dart';
import 'package:aman_store2/features/location/data/models/add_location_model.dart';
import 'package:aman_store2/features/location/prsentation/view_model/confirm_location_cubit/confirm_location_cubit.dart';
import 'package:aman_store2/features/location/prsentation/view_model/confirm_location_cubit/confirm_location_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_loading_stack.dart';
import '../../../../../core/widgets/erroe_stacke.dart';
import '../../../../../core/widgets/no_internet_stack.dart';

class ConfirmLocationViewBody extends StatelessWidget {
  final AddLocationModel addLocationModel;
  const ConfirmLocationViewBody({super.key, required this.addLocationModel});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ConfirmLocationCubit>();
    return SingleChildScrollView(
      child: Padding(
        padding: REdgeInsets.symmetric(vertical: 15.h, horizontal: 8.w),
        child: Form(
          key: cubit.key,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
               CustomTextFormField(
                title: 'نوع *',
                validation: (val) {
                  return validations(value: val!, type: '');
                },
                isCommed: true,
                textFormController: cubit.type,
              ),
              CustomTextFormField(
                title: 'الــموقع *',
                validation: (val) {
                  return validations(value: val!, type: '');
                },
                isCommed: true,
                textFormController: cubit.location,
              ),
              CustomTextFormField(
                textFormController: cubit.street,
                title: 'الشارع *',
                isCommed: true,
                validation: (val) {
                  return validations(value: val!, type: '');
                },
              ),
              CustomTextFormField(
                textFormController: cubit.house,
                title: 'المنزل',
                isCommed: true,
                validation: (val) {
                  if (cubit.house.text.trim().isEmpty) {
                    return null;
                  }

                  return validations(value: val!, type: '');
                },
              ),
              CustomTextFormField(
                textFormController: cubit.room,
                title: 'رقم الغرفة',
                isCommed: true,
                validation: (val) {
                  if (cubit.room.text.trim().isEmpty) return null;
                  return validations(value: val!, type: '');
                },
              ),
              SizedBox(height: 40.h),
              BlocListener<ConfirmLocationCubit, ConfirmLocationState>(
                listener: (context, state) {
                  if (isDialogOpen(context)) {
                    context.pop();
                  }
                  state.whenOrNull(
                    loading: () => showLoadingStack(context),
                    failure: (errorMessage) {
                      showErrorStack(context, errorMessage, () {
                        context.read<ConfirmLocationCubit>().onSubmit();
                      });
                    },
                    noInternet: () => showNoInternet(context, () {
                      context.read<ConfirmLocationCubit>().onSubmit();
                    }),
                    success: (locationModel) => {
                      if (addLocationModel.index == 0)
                        {context.goNamed(AppRouters.homeScreenView)}
                    },
                  );
                },
                child: CustomElevatedButton(
                    radius: 15.r,
                    title: 'تــأكيد الموقع',
                    onPressed: () async {
                      // print(await SecureStorage.readData(key: 'token'));
                      cubit.onSubmit();
                    }),
              ),
              // SizedBox(height: 15.h)
            ],
          ),
        ),
      ),
    );
  }
}
