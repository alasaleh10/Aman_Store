import 'package:freezed_annotation/freezed_annotation.dart';
part 'rest_password_state.freezed.dart';

@freezed
class RestPasswordState with _$RestPasswordState {
  const factory RestPasswordState.initial() = RestPasswordInitial;
  const factory RestPasswordState.loading() = RestPasswordLoading;
  const factory RestPasswordState.sucsess() = RestPasswordSucsess;
  const factory RestPasswordState.noInternet() = RestPasswordNoInternet;
  const factory RestPasswordState.failure(String error) = RestPasswordFailurer;
}
