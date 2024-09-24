
import 'package:freezed_annotation/freezed_annotation.dart';


import '../../../../../core/models/done_model.dart';
import '../../../data/models/location_model.dart';

part 'spicific_location_state.freezed.dart';
@freezed
class SpicificLocationState with _$SpicificLocationState {
  const factory SpicificLocationState.initial() = Initial;
  const factory SpicificLocationState.loading() = Loading;
  const factory SpicificLocationState.loaded({required LocationsModel locationModel}) = Loaded;
  const factory SpicificLocationState.error({required String errorMessage}) = Error;
  const factory SpicificLocationState.noInternet() = NoInternet;
  const factory SpicificLocationState.loading2() = Loading2;
  const factory SpicificLocationState.loaded2({required DoneModel locationMessageModel}) = Loaded2;
  const factory SpicificLocationState.error2({required String errorMessage}) = Error2;
  const factory SpicificLocationState.noInternet2() = NoInternet2;
}
