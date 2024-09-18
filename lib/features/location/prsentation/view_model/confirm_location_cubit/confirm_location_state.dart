import 'package:aman_store2/features/location/data/models/location_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'confirm_location_state.freezed.dart';
@freezed
class ConfirmLocationState with _$ConfirmLocationState {
  const factory ConfirmLocationState.initial() = ConfirmLocationStateInitial;
  const factory ConfirmLocationState.loading() = ConfirmLocationStateLoading;
  const factory ConfirmLocationState.success(LocationModel locationModel) = ConfirmLocationStateSuccess;
  const factory ConfirmLocationState.failure(String errorMessage) = ConfirmLocationStateFailure;
  const factory ConfirmLocationState.noInternet() = ConfirmLocationStateNoInternet;

}