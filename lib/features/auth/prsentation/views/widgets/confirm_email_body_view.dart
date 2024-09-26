import 'package:aman_store2/features/auth/prsentation/view_model/confirm_email_cuibt/confirm_email_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/helper/cached_helper.dart';
import '../../../../../core/routers/app_routers.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_loading_stack.dart';
import '../../../../../core/widgets/erroe_stacke.dart';
import '../../../../../core/widgets/no_internet_stack.dart';
import '../../view_model/confirm_email_cuibt/confirm_email_cubit.dart';
import 'otp_text_fildes.dart';
import 'send_code_row.dart';

class ConfirmEmailBodyView extends StatelessWidget {
  final int index;
  final String email;
  const ConfirmEmailBodyView(
      {super.key, required this.email, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: MediaQuery.sizeOf(context).height * .1),
        Text(index == 0 ? 'confirmphone'.tr() : 'restText'.tr(),
            style: AppStyle.textStyleBold30, textAlign: TextAlign.center),
        const SizedBox(height: 15),
        Text(
          '${'sendCode'.tr()}\n$email',
          style: AppStyle.textStyleRegular16,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 15),
        const CustomTextFailedOtp(),
        const SizedBox(height: 15),
        const SendCodeRow(),
        const SizedBox(height: 20),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: BlocListener<ConfirmEmailCubit, ConfirmStatus>(
              listener: (context, state) {
                if (isDialogOpen(context)) {
                  context.pop();
                }
                state.mapOrNull(
                  failure: (value) {
                    showErrorStack(context, value.errorMessage, () {
                      context.read<ConfirmEmailCubit>().confirmEmail(email);
                    });
                  },
                  loading: (value) {
                    showLoadingStack(context);
                  },
                  noInternet: (value) {
                    showNoInternet(context, () {
                      context.read<ConfirmEmailCubit>().confirmEmail(email);
                    });
                  },
                  sucsess: (value) async {
                    if (index == 0) {
                      // await SecureStorage.readData(key: 'token');

                      // ignore: use_build_context_synchronously
                      context.pushReplacementNamed(AppRouters.addLocationView,
                          extra: 0);
                    } else if (index == 1) {
                      context.pushNamed(AppRouters.restPasswordView,
                          extra: email.trim());
                    } else {
                      await CacheHelper.saveData(
                          key: 'token', value: value.user.token);
                      // ignore: use_build_context_synchronously
                      context.goNamed(AppRouters.homeScreenView);
                    }
                  },
                );
              },
              child: CustomElevatedButton(
                  title: 'confirm'.tr(),
                  onPressed: () {
                    context.read<ConfirmEmailCubit>().confirmEmail(email);
                  }),
            )),
        const SizedBox(height: 24),
      ],
    );
  }
}
