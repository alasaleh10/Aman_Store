import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/core/helper/secure_storage.dart';
import 'package:aman_store2/core/networking/dio_factory.dart';
import 'package:aman_store2/features/location/data/models/add_location_model.dart';
import 'package:aman_store2/features/location/data/repo/location_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/add_location_to_json.dart';
import 'confirm_location_state.dart';

class ConfirmLocationCubit extends Cubit<ConfirmLocationState> {
  final LocationRepo _locationRepo;
  final AddLocationModel addLocationModel;
  ConfirmLocationCubit(this._locationRepo, this.addLocationModel)
      : super(const ConfirmLocationState.initial());
  String? lat, long;
  final key = GlobalKey<FormState>();
  final type = TextEditingController(text: 'المنزل');
  final location = TextEditingController();
  final street = TextEditingController();
  final house = TextEditingController();
  final room = TextEditingController();

  void onInit() {
    location.text = addLocationModel.name.trim();
    lat = addLocationModel.lat;
    long = addLocationModel.lag;
  }

  void onSubmit() async {
    if (key.currentState!.validate()) {
      emit(const ConfirmLocationState.loading());
      if (await isConncection()) {
        String token = await SecureStorage.readData(key: 'token') ?? '';
        DioFactory.setTokenIntoHeaderAfterLogin(token);
        var response = await _locationRepo.addLocation(AddLocationToJson(
            type: type.text.trim(),
            name: location.text.trim(),
            lat: lat!,
            lng: long!,
            street: street.text.trim(),
            home: house.text.trim(),
            roomNo: room.text.trim()));
        response.when(success: (location) {
          emit(ConfirmLocationState.success(location.message));
        }, failure: (failure) {
          emit(ConfirmLocationState.failure(failure.message ?? 'فشلةالعملية'));
        });
      } else {
        emit(const ConfirmLocationState.noInternet());
      }
    }
  }
}
