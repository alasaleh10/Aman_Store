
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/faq_questions_model.dart';
part 'faq_qusetions_state.freezed.dart';
@freezed
class FaqQusetionsState with _$FaqQusetionsState {
  const factory FaqQusetionsState.initial() = Initial;

  const factory FaqQusetionsState.loading() = Loading;
  const factory FaqQusetionsState.loading2() = Loading2;

  const factory FaqQusetionsState.sucsess(List<FaqQuestionModel> questions) = Sucsess;

  const factory FaqQusetionsState.failure(String message) = Failure;
  const factory FaqQusetionsState.failure2(String message) = Failure2;


  const factory FaqQusetionsState.noInternet() = NoInternet;
  const factory FaqQusetionsState.noInternet2() = NoInternet2;

}
