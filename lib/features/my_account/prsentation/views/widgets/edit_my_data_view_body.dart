import 'package:aman_store2/core/utils/app_assets.dart';
import 'package:aman_store2/core/validations/regular_exceptions.dart';
import 'package:aman_store2/core/widgets/custom_elevated_button.dart';
import 'package:aman_store2/core/widgets/custom_text_form_failed.dart';
import 'package:aman_store2/features/my_account/prsentation/view_model/edit_my_account_cubit/edit_my_account_cubit.dart';
import 'package:aman_store2/features/my_account/prsentation/view_model/edit_my_account_cubit/edit_my_account_state.dart';
import 'package:aman_store2/features/my_account/prsentation/view_model/my_account_cubit/my_account_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/functions/show_snac_bar.dart';
import '../../../../../core/widgets/custom_loading_stack.dart';
import '../../../../../core/widgets/erroe_stacke.dart';
import '../../../../../core/widgets/no_internet_stack.dart';

class EditMyDataViewBody extends StatelessWidget {
  final BuildContext context2;
  const EditMyDataViewBody({super.key, required this.context2});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<EditMyAccountCubit>();
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        child: Form(
          key: cubit.key,
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormField(
                validation: (value) {
                  return validations(value: value!, type: '');
                },
                textFormController: cubit.firstName,
                title: 'name1'.tr(),
                image: Assets.imagesUsername,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormField(
                validation: (value) {
                  return validations(value: value!, type: '');
                },
                textFormController: cubit.lastName,
                title: 'name2'.tr(),
                image: Assets.imagesUsername,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormField(
                validation: (value) {
                  return validations(value: value!, type: 'phone');
                },
                textInputType: TextInputType.phone,
                textFormController: cubit.phone,
                title: 'phone'.tr(),
                image: Assets.imagesPhone,
              ),
              SizedBox(
                height: 15.h,
              ),
              BlocListener<EditMyAccountCubit, EditMyAccountState>(
                listener: (context, state) {
                  if (isDialogOpen(context)) {
                    context.pop();
                  }
                  state.mapOrNull(
                    failure: (value) =>
                        showErrorStack(context, value.error, () {
                      context.read<EditMyAccountCubit>().editMyAccount();
                    }),
                    loading: (value) => showLoadingStack(context),
                    noInternet: (value) => NoInternetStack(
                      onTap: () {
                        context.read<EditMyAccountCubit>().editMyAccount();
                      },
                    ),
                    sucsess: (value) {
                      context2
                          .read<MyAccountCubit>()
                          .getMyAccount(isFromEdit: true);
                      context.pop();
                      showSnackBar(context,
                          message: value.sucsessMessage, isError: false);
                    },
                  );
                },
                child: CustomElevatedButton(
                  title: 'update'.tr(), 
                  onPressed: () {
                    cubit.editMyAccount();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
