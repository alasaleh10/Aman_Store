

import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_location_state.freezed.dart';
@freezed

class AddLocationState with _$AddLocationState {
  const factory AddLocationState.initial() = AddLocationInitial;
  const factory AddLocationState.loading() = AddLocationLoading;
  const factory AddLocationState.sucsess(String lat,String long,String location) = AddLocationSucsess;
  const factory AddLocationState.noPermision() = AddLocationNoPermision;
  const factory AddLocationState.noLocation() = AddLocationNoLocation;
  const factory AddLocationState.nointernet() = AddLocationNoInternet;
  const factory AddLocationState.failure(String error) = AddLocationFailure;





  

   
}
