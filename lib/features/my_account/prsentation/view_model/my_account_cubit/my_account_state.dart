import 'package:aman_store2/core/models/done_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../auth/data/model/user_model.dart';
part 'my_account_state.freezed.dart';

@freezed
class MyAccountState with _$MyAccountState {
  const factory MyAccountState.initial() = Initial;

  const factory MyAccountState.loading() = Loading;
  const factory MyAccountState.sucsess(UserModel userModel) = Sucsess;

  const factory MyAccountState.failure(String error) = Failure;
  const factory MyAccountState.failure2(String error) = Failure2;

  const factory MyAccountState.noInternet() = NoInternet;
  const factory MyAccountState.editImage(DoneModel doneModel) = EditImage;
}
