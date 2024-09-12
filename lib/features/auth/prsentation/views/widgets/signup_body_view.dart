import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routers/app_routers.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_loading_stack.dart';
import '../../../../../core/widgets/erroe_stacke.dart';
import '../../../../../core/widgets/no_internet_stack.dart';
import '../../view_model/signup_cuibt/sign_up_cubit.dart';
import '../../view_model/signup_cuibt/sign_up_state.dart';

import 'row_account_auth.dart';
import 'sign_up_auth_filds.dart';

class SignUpBodyView extends StatefulWidget {
  const SignUpBodyView({super.key});

  @override
  State<SignUpBodyView> createState() => _SignUpBodyViewState();
}

class _SignUpBodyViewState extends State<SignUpBodyView> {
  @override
  Widget build(BuildContext context) {
    final cuibt = context.read<SignUpCubit>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Form(
        key: cuibt.key,
        child: ListView(
          children: [
            Image.asset(Assets.imagesLogo),
            Text(
              'signup1'.tr(),
              style: AppStyle.textStyleBold22,
            ),
            SizedBox(height: 17.h),
            SignUpAuthFilds(cuibt: cuibt),
            SizedBox(height: 17.h),
            BlocListener<SignUpCubit, SignUpState>(
              listener: (context, state) {
                if (isDialogOpen(context)) {
                  context.pop();
                }
                state.mapOrNull(
                  failure: (value) {
                    showErrorStack(context, value.message, () {
                      cuibt.cheekData();
                    });
                  },
                  loading: (value) {
                    showLoadingStack(context);
                  },
                  noIntetnet: (value) {
                    showNoInternet(context, () {
                      cuibt.cheekData();
                    });
                  },
                  sucsess: (value) {
                    context.pushReplacementNamed(AppRouters.confirmEmailView,
                        extra: [0, value.signUpResponse.email]);
                  },
                );
              },
              child: CustomElevatedButton(
                  title: 'signup2'.tr(),
                  onPressed: () {
                    // context.pushNamed(AppRouters.confirmEmailView,
                    //     extra: [2, 'value.signUpResponse.email']);
                    cuibt.cheekData();
                  }),
            ),
            const SizedBox(height: 17),
            RowAccountAuth(
                title1: 'haveaccount1'.tr(),
                title2: 'login'.tr(),
                onPressed: () {
                  context.pop();
                }),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
