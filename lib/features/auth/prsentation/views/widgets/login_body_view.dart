
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/helper/cached_helper.dart';
import '../../../../../core/routers/app_routers.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/validations/regular_exceptions.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_loading_stack.dart';
import '../../../../../core/widgets/custom_text_form_failed.dart';
import '../../../../../core/widgets/erroe_stacke.dart';
import '../../../../../core/widgets/no_internet_stack.dart';
import '../../view_model/login_cuibt/login_cubit.dart';
import '../../view_model/login_cuibt/login_state.dart';

import 'row_account_auth.dart';

class LoginBodyView extends StatelessWidget {
  const LoginBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    final cuibt = BlocProvider.of<LoginCubit>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Form(
        key: cuibt.key,
        child: ListView(
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * .1),
            AspectRatio(
              aspectRatio: 4 / 1,
              child: Image.asset(Assets.imagesLogo),
            ),
            Text(
              'login1'.tr(),
              style: AppStyle.textStyleBold22,
            ),
            const SizedBox(height: 17),
            CustomTextFormField(
              textInputType: TextInputType.phone,
              validation: (value) {
                return validations(value: value!, type: 'phone');
              },
              image: Assets.imagesPhone,
              title: 'phone'.tr(),
              textFormController: cuibt.phone,
            ),
            const SizedBox(height: 9),
            CustomTextFormField(
              textInputType: TextInputType.visiblePassword,
              validation: (value) {
                return validations(value: value!, type: 'password');
              },
              obesText: true,
              image: Assets.imagesLuck,
              title: 'password'.tr(),
              textFormController: cuibt.password,
            ),
            const SizedBox(height: 9),
            GestureDetector(
              onTap: ()  {
                

                context.pushNamed(AppRouters.cheekEmailView);
              },
              child: Text('forgetpass'.tr(),
                  style: AppStyle.textStyleRegular16
                      .copyWith(color: AppColors.kPrimColor)),
            ),
            const SizedBox(height: 24),
            BlocListener<LoginCubit, LoginState>(
              listener: (context, state) {
                if (isDialogOpen(context)) {
                  context.pop();
                }
                state.mapOrNull(
                  failure: (value) {
                    showErrorStack(context, value.errorMessage, () {
                      cuibt.cheekData();
                    });
                  },
                  loading: (value) {
                    showLoadingStack(context);
                  },
                  noInternet: (value) {
                    showNoInternet(context, () {
                      cuibt.cheekData();
                    });
                  },
                  sucsess: (value) async {
                    if (value.user.user.isApproved) {
                      await CacheHelper.saveData(
                          key: 'token', value: value.user.token);
                      // ignore: use_build_context_synchronously
                      context.goNamed(AppRouters.homeScreenView);
                    } else {
                      context.pushReplacementNamed(AppRouters.confirmEmailView,
                          extra: [2, value.user.user.email]);
                    }
                    // context.pushReplacementNamed(AppRouters.homeScreenView);
                  },
                );
                // if (state is LoginLoading) {
                //   showDialog(
                //       context: context,
                //       builder: (context) => const AuthLoading());
                // } else if (state is LoginSucsess) {
                //   CacheHelper.saveData(key: 'id', value: 1);
                //   context.pop();
                //  context
                //       .pushReplacementNamed(AppRouters.homeScreenView);
                // }
              },
              child: CustomElevatedButton(
                  title: 'login'.tr(),
                  onPressed: () {
                    cuibt.cheekData();
                  }),
            ),
            const SizedBox(height: 24),
            RowAccountAuth(
                title1: 'haveaccount'.tr(),
                title2: 'signup'.tr(),
                onPressed: () {
                  context.pushNamed(AppRouters.signupView);
                }),
            const SizedBox(height: 23),
            CustomElevatedButton(
              backgroundColor: AppColors.kPrimColor5,
              title: 'visitor'.tr(),
              onPressed: () {},
              isVisitor: true,
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
