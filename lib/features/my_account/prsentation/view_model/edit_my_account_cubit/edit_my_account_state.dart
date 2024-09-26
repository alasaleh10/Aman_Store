import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_my_account_state.freezed.dart';

@freezed
class EditMyAccountState with _$EditMyAccountState {
  const factory EditMyAccountState.initial() = Initial;

  const factory EditMyAccountState.loading() = Loading;
  const factory EditMyAccountState.sucsess(String sucsessMessage) = Sucsess;

  const factory EditMyAccountState.failure(String error) = Failure;

  const factory EditMyAccountState.noInternet() = NoInternet;
}
