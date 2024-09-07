import 'package:aman_store2/features/auth/data/model/signup_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_state.freezed.dart';
@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = SignUpInitial;
  const factory SignUpState.loading() = SignUpLoading;
  const factory SignUpState.sucsess(SignUpResponse signUpResponse) = SignUpSucsess;
  const factory SignUpState.failure(String message) = SignUpFailure;
}