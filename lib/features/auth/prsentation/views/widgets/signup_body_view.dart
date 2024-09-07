import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routers/app_routers.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../view_model/signup_cuibt/sign_up_cubit.dart';
import '../../view_model/signup_cuibt/sign_up_state.dart';
import 'auth_loading.dart';
import 'row_account_auth.dart';
import 'sign_up_auth_filds.dart';

class SignUpBodyView extends StatelessWidget {
  const SignUpBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    final cuibt = BlocProvider.of<SignUpCubit>(context);
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
            const SizedBox(height: 17),
            SignUpAuthFilds(cuibt: cuibt),
            const SizedBox(height: 17),
            BlocListener<SignUpCubit, SignUpState>(
              listener: (context, state) {
                state.mapOrNull(
                  failure: (value) {
                    context.pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(value.message),
                      ),
                    );
                  },
                  loading: (value) {
                    showDialog(
                        context: context,
                        builder: (context) => const AuthLoading());
                  },
                );
                // if (state is SignUpLoading) {

                // } else if (state is SignUpSucsess) {
                //   context.pop();
                //   GoRouter.of(context).pushNamed(AppRouters.confirmEmailView,
                //       extra: [0, cuibt.email.text]);
                // }
              },
              child: CustomElevatedButton(
                  title: 'signup2'.tr(),
                  onPressed: () {
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
