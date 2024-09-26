import 'package:aman_store2/features/auth/data/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'confirm_email_state.freezed.dart';

@freezed
class ConfirmStatus with _$ConfirmStatus {
  const factory ConfirmStatus.initial() = ConfirmEmailInitial;
  const factory ConfirmStatus.loading() = ConfirmEmailLoading;
  const factory ConfirmStatus.failure(String errorMessage) =
      ConfirmEmailFailure;
  const factory ConfirmStatus.sucsess(UserModel user) = ConfirmEmailSucsess;
  const factory ConfirmStatus.noInternet() = ConfirmEmailNoInternet;
}
