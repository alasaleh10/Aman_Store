import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
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
import '../../view_model/cheek_email_cuibt/cheek_email_cubit.dart';
import '../../view_model/cheek_email_cuibt/cheek_email_state.dart';

class CheekEmailBodyView extends StatelessWidget {
  const CheekEmailBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    final cuibt = BlocProvider.of<CheekEmailCubit>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Form(
        key: cuibt.key,
        child: ListView(
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * .1),
            Text('cheekEmailPage'.tr(),
                style: AppStyle.textStyleBold25
                    .copyWith(color: AppColors.kBlackColor),
                textAlign: TextAlign.center),
            const SizedBox(height: 15),
            CustomTextFormField(
                validation: (value) {
                  return validations(value: value!, type: 'email');
                },
                image: Assets.imagesEmail,
                title: 'email'.tr(),
                textFormController: cuibt.email),
            const SizedBox(height: 25),
            BlocListener<CheekEmailCubit, CheekEmailState>(
              listener: (context, state) {
                if (isDialogOpen(context)) {
                  context.pop();
                }
                state.mapOrNull(
                  failure: (value) {
                    showErrorStack(context, value.message, () {
                      cuibt.cheekEmail();
                    });
                  },
                  loading: (value) {
                    showLoadingStack(context);
                  },
                  noInternet: (value) {
                    showNoInternet(context, () {
                      cuibt.cheekEmail();
                    });
                  },
                  sucsess: (value) {
                    context.pushNamed(AppRouters.confirmEmailView,
                        extra: [1, cuibt.email.text.trim()]);
                  },
                );

               
              },
              child: CustomElevatedButton(
                  title: 'cheek'.tr(),
                  onPressed: () {
                    cuibt.cheekEmail();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
