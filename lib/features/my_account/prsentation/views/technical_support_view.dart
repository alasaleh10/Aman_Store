import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/functions/show_snac_bar.dart';
import 'package:aman_store2/core/validations/regular_exceptions.dart';
import 'package:aman_store2/core/widgets/custom_appbar.dart';
import 'package:aman_store2/core/widgets/custom_elevated_button.dart';
import 'package:aman_store2/core/widgets/custom_text_form_failed.dart';
import 'package:aman_store2/features/my_account/prsentation/view_model/technical_support_cubit/technical_support_state.dart';
import 'package:aman_store2/features/my_account/prsentation/views/widgets/t_s_dropbutton_textform.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_loading_stack.dart';
import '../../../../core/widgets/erroe_stacke.dart';
import '../../../../core/widgets/no_internet_stack.dart';
import '../view_model/technical_support_cubit/technical_support_cubit.dart';
import 'widgets/t_s_phone_continer.dart';
import 'widgets/t_s_top_listtile.dart';

class TechnicalSupportView extends StatelessWidget {
  const TechnicalSupportView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TechnicalSupportCubit>();
    return Scaffold(
      floatingActionButton: const TSPhoneContiner(),
      appBar: customAppbar('الــدعم الــفني'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w),
        child: SingleChildScrollView(
          child: Form(
            key: cubit.key,
            child: Column(
              children: [
                const TSTopListTile(),
                vSizedBox(26),
                const TSDropButtonTextForm(),
                vSizedBox(15),
                CustomTextFormField(
                  validation: (value) {
                    return validations(value: value!, type: '');
                  },
                  textFormController: cubit.problebTitle,
                  borderColor: AppColors.kBlackColor,
                  title: 'problemType'.tr(),
                  isCommed: true,
                ),
                vSizedBox(15),
                CustomTextFormField(
                  textFormController: cubit.messageDetils,
                  borderColor: AppColors.kBlackColor,
                  title: 'messageDetils'.tr(),
                  maxLines: 4,
                  isCommed: true,
                  validation: (value) {
                    if (cubit.messageDetils.text.trim().isNotEmpty) {
                      return validations(value: value!, type: '');
                    }
                    return null;
                  },
                ),
                vSizedBox(22),
                BlocListener<TechnicalSupportCubit, TechnicalSupportState>(
                  listener: (context, state) {
                    if (isDialogOpen(context)) {
                      context.pop();
                    }
                    state.mapOrNull(
                      failure: (value) =>
                          showErrorStack(context, value.message, () {
                        cubit.sendProblem();
                      }),
                      loading: (value) => showLoadingStack(context),
                      noInternet: (value) => showNoInternet(context, () {
                        cubit.sendProblem();
                      }),
                      sucsess: (value) {
                        showSnackBar(context,
                            message: value.message, isError: false);
                      },
                    );
                  },
                  child: CustomElevatedButton(
                    title: 'send'.tr(),
                    onPressed: () {
                      cubit.sendProblem();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
