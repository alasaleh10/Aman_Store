
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cheek_email_state.freezed.dart';
@freezed
class CheekEmailState with _$CheekEmailState {
  const factory CheekEmailState.initial() = CheekEmailInitial;
  const factory CheekEmailState.loading() = CheekEmailLoading;
  const factory CheekEmailState.sucsess() = CheekEmailSucsess;
  const factory CheekEmailState.noInternet() = CheekEmailNoInternet;
  const factory CheekEmailState.failure(String message) = CheekEmailError;
    
}

