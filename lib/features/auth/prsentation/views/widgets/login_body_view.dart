import 'package:aman_store2/core/networking/api_constanses.dart';
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
import '../../../../../core/widgets/custom_text_form_failed.dart';
import '../../view_model/login_cuibt/login_cubit.dart';
import 'auth_loading.dart';
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
              validation: (value) {
                return validations(value: value!, type: 'email');
              },
              image: Assets.imagesEmail,
              title: 'email'.tr(),
              textFormController: cuibt.email,
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
              onTap: () {
                GoRouter.of(context).pushNamed(AppRouters.cheekEmailView);
              },
              child: Text('forgetpass'.tr(),
                  style: AppStyle.textStyleRegular16
                      .copyWith(color: AppColors.kPrimColor)),
            ),
            const SizedBox(height: 24),
            BlocListener<LoginCubit, LoginState>(
              listener: (context, state) {
                if (state is LoginLoading) {
                  showDialog(
                      context: context,
                      builder: (context) => const AuthLoading());
                } else if (state is LoginSucsess) {
                  CacheHelper.saveData(key: 'id', value: 1);
                  context.pop();
                  GoRouter.of(context)
                      .pushReplacementNamed(AppRouters.homeScreenView);
                }
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
                  GoRouter.of(context).pushNamed(AppRouters.signupView);
                }),
            const SizedBox(height: 23),
            CustomElevatedButton(
              backgroundColor: AppColors.kPrimColor5,
              title: 'visitor'.tr(),
              onPressed: () {
              
              },
              isVisitor: true,
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}