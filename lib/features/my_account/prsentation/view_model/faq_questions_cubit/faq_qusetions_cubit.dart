import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/my_account/data/account_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/faq_questions_model.dart';
import 'faq_qusetions_state.dart';

class FaqQusetionsCubit extends Cubit<FaqQusetionsState> {
  final AccountRepo _accountRepo;
  FaqQusetionsCubit(this._accountRepo)
      : super(const FaqQusetionsState.initial());
  int page = 1;
  List<FaqQuestionModel> questions = [];
  bool isFinish = false;
  void getFaqQusetions({bool isFrompagination = false}) async {
    if (isFinish == false) {
      if (isFrompagination) {
        emit(const FaqQusetionsState.loading2());
      } else {
        emit(const FaqQusetionsState.loading());
      }
      if (await isConncection()) {
        var response = await _accountRepo.getFaqQusetions(page);
        response.when(success: (faq) {
          if (faq.question.isEmpty) {
            isFinish = true;
          }
          page++;
          questions.addAll(faq.question);

          emit(FaqQusetionsState.sucsess(questions));
        }, failure: (failure) {
          if (isFrompagination) {
            emit(FaqQusetionsState.failure2(failure.message ?? 'فشلةالعملية'));
          } else {
            emit(FaqQusetionsState.failure(failure.message ?? 'فشلةالعملية'));
          }
        });
      } else {
        if (isFrompagination) {
          emit(const FaqQusetionsState.noInternet2());
        } else {
          emit(const FaqQusetionsState.noInternet());
        }
      }
    } else {
      emit(const FaqQusetionsState.failure2('لاتوجد بيانات أخرى'));
    }
  }
}
