import 'package:freezed_annotation/freezed_annotation.dart';
part 'confirm_location_state.freezed.dart';

@freezed
class ConfirmLocationState with _$ConfirmLocationState {
  const factory ConfirmLocationState.initial() = ConfirmLocationStateInitial;
  const factory ConfirmLocationState.loading() = ConfirmLocationStateLoading;
  const factory ConfirmLocationState.success(String message) =
      ConfirmLocationStateSuccess;
  const factory ConfirmLocationState.failure(String errorMessage) =
      ConfirmLocationStateFailure;
  const factory ConfirmLocationState.noInternet() =
      ConfirmLocationStateNoInternet;
}
