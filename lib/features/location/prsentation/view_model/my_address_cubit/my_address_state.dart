
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/list_locations_model.dart';

part 'my_address_state.freezed.dart';
@freezed
class MyAddressState with _$MyAddressState {
  const factory MyAddressState.initial() = Initial;
  const factory MyAddressState.loading() = Loading;
  const factory MyAddressState.success(ListLocationsModel locations) = Success;
  const factory MyAddressState.failure(String message) = Failure;
  const factory MyAddressState.noInternet() = NoInternet;
}
