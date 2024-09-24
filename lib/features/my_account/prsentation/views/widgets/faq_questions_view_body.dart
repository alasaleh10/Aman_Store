import 'package:aman_store2/core/widgets/failure_page_view.dart';
import 'package:aman_store2/core/widgets/loading_view_page.dart';
import 'package:aman_store2/core/widgets/no_internet_page_view.dart';
import 'package:aman_store2/features/my_account/prsentation/view_model/faq_questions_cubit/faq_qusetions_cubit.dart';
import 'package:aman_store2/features/my_account/prsentation/view_model/faq_questions_cubit/faq_qusetions_state.dart';
import 'package:aman_store2/features/my_account/prsentation/views/widgets/faq_questions_sucsess_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FaqQuestionsViewBody extends StatelessWidget {
  const FaqQuestionsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FaqQusetionsCubit, FaqQusetionsState>(
      buildWhen: (previous, current) => current is Loading ||
      current is Failure||
      current is NoInternet||
      current is Sucsess
      ,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          loading: () => const LoadingViewPage(),
          failure: (message) => FailurePageView(
              message: message,
              onTap: () {
                context.read<FaqQusetionsCubit>().getFaqQusetions();
              }),
          noInternet: () => NoInternetPage(onTap: () {
            context.read<FaqQusetionsCubit>().getFaqQusetions();
          }),
          sucsess: (questions) => FaqQuestionsSucsessWidget(
            questions: questions,
          ),
        );
      },
    );
  }
}
