import 'package:aman_store2/core/functions/show_snac_bar.dart';
import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:aman_store2/features/my_account/prsentation/view_model/faq_questions_cubit/faq_qusetions_cubit.dart';
import 'package:aman_store2/features/my_account/prsentation/view_model/faq_questions_cubit/faq_qusetions_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFaqBottomBar extends StatelessWidget {
  const CustomFaqBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FaqQusetionsCubit, FaqQusetionsState>(
      listenWhen: (previous, current) =>
          current is Failure2 || current is NoInternet2,
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          failure2: (message) => showSnackBar(context, message: message),
          noInternet2: () =>
              showSnackBar(context, message: "فشل الإتصال بالانترنت"),
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loading2: () => SizedBox(
            height: 50.h,
            child: const Center(
              child: CircularProgressIndicator.adaptive(
                backgroundColor: AppColors.kPrimColor,
              ),
            ),
          ),
        );
      },
    );
  }
}
