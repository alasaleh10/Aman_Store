import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/location/data/repo/location_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'spicific_location_state.dart';

class SpicificLocationCubit extends Cubit<SpicificLocationState> {
  final LocationRepo _locationRepo;
  final int id;
  SpicificLocationCubit(this._locationRepo, this.id)
      : super(const SpicificLocationState.initial());

  LatLng? latLng;
  final key = GlobalKey<FormState>();
  int? opreation;
  // 1 edit
  // 2 delete

  final type = TextEditingController();
  final name = TextEditingController();
  final street = TextEditingController();
  final house = TextEditingController();
  final room = TextEditingController();
  void getSpicificLocation() async {
    emit(const SpicificLocationState.loading());
    if (await isConncection()) {
      var response = await _locationRepo.spicificLocation(id);
      response.when(success: (location) {
        latLng = LatLng(double.parse(location.location.lat),
            double.parse(location.location.lng));
        type.text = location.location.type;
        name.text = location.location.name;
        street.text = location.location.street;
        house.text = location.location.home ?? '';
        room.text = location.location.roomNo ?? '';
        emit(SpicificLocationState.loaded(locationModel: location));
      }, failure: (failure) {
        emit(SpicificLocationState.error(
            errorMessage: failure.message ?? 'فشلة العملية'));
      });
    } else {
      emit(const SpicificLocationState.noInternet());
    }
  }

  void deleteLocation() async {
    opreation=2;
    emit(const SpicificLocationState.loading2());
    if (await isConncection()) {
      var response = await _locationRepo.deleteLocation(id);
      response.when(success: (locationMessageModel) {
        emit(SpicificLocationState.loaded2(
            locationMessageModel: locationMessageModel));
      }, failure: (failure) {
        emit(SpicificLocationState.error2(
            errorMessage: failure.message ?? 'فشلة العملية'));
      });
    } else {
      emit(const SpicificLocationState.noInternet2());
    }
  }
}
