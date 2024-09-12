import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/routers/app_routers.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/validations/regular_exceptions.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_loading_stack.dart';
import '../../../../../core/widgets/custom_text_form_failed.dart';
import '../../../../../core/widgets/erroe_stacke.dart';
import '../../../../../core/widgets/no_internet_stack.dart';
import '../../view_model/rest_password_cuibt/rest_password_cubit.dart';
import '../../view_model/rest_password_cuibt/rest_password_state.dart';

class RestPasswordBodyView extends StatelessWidget {
  final String email;
  const RestPasswordBodyView({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    final cuibt = BlocProvider.of<RestPasswordCubit>(context);
    return Form(
      key: cuibt.key,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * .1),
            Text('restText'.tr(), style: AppStyle.textStyleBold22),
            const SizedBox(height: 24),
            CustomTextFormField(
                validation: (value) {
                  return validations(value: value!, type: 'password');
                },
                textInputType: TextInputType.visiblePassword,
                obesText: true,
                image: Assets.imagesLuck,
                title: 'newpass'.tr(),
                textFormController: cuibt.password1),
            const SizedBox(height: 10),
            CustomTextFormField(
                validation: (value) {
                  return validations(
                      value: value!,
                      type: 'password',
                      password2: cuibt.password2.text,
                      password1: cuibt.password1.text);
                },
                textInputType: TextInputType.visiblePassword,
                obesText: true,
                image: Assets.imagesLuck,
                title: 'confirmpassword'.tr(),
                textFormController: cuibt.password2),
            const SizedBox(height: 24),
            BlocListener<RestPasswordCubit, RestPasswordState>(
              listener: (context, state) {
                if (isDialogOpen(context)) {
                  context.pop();
                }
                state.mapOrNull(
                  failure: (value) {
                    showErrorStack(context, value.error, () {
                      cuibt.restPassword();
                    });
                  },
                  loading: (value) {
                    showLoadingStack(context);
                  },
                  noInternet: (value) {
                    showNoInternet(context, () {
                      cuibt.restPassword();
                    });
                  },
                  sucsess: (value) {
                    context.goNamed(AppRouters.loginView);
                  },
                );
              },
              child: CustomElevatedButton(
                  title: 'confirm'.tr(),
                  onPressed: () {
                    cuibt.restPassword();
                  }),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
