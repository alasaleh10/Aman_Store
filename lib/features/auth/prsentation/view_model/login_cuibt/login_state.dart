import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/user_model.dart';
part 'login_state.freezed.dart';
@freezed
class LoginState with _$LoginState {

  const factory LoginState.initial() = LoginInitial;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.failure(String errorMessage) = LoginFailure;
  const factory LoginState.sucsess(UserModel user) = LoginSucsess;
  const factory LoginState.noInternet() = LoginNoInternet;

}
