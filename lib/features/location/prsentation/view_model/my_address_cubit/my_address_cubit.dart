import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repo/location_repo.dart';
import 'my_address_state.dart';

class MyAddressCubit extends Cubit<MyAddressState> {
  final LocationRepo _locationRepo;
  MyAddressCubit(this._locationRepo) : super(const MyAddressState.initial());

  void getMyLocations({bool isFromRefresh = false}) async {
    if (!isFromRefresh) {
      emit(const MyAddressState.loading());
    }

    if (await isConncection()) {
      var response = await _locationRepo.getMyLocations();

      response.when(success: (locations) {
        emit(MyAddressState.success(locations));
      }, failure: (failure) {
        if (isFromRefresh) {
          emit(MyAddressState.failure2(failure.message ?? 'فشلةالعملية'));
        } else {
          emit(MyAddressState.failure(failure.message ?? 'فشلةالعملية'));
        }
      });
    } else {
      if (isFromRefresh) {
        emit(const MyAddressState.failure2('لا يوجد اتصال بالانترنت'));
      } else {
        emit(const MyAddressState.noInternet());
      }
    }
  }

  void setMainLocation(int id) async {
    emit(const MyAddressState.loading2());
    if (await isConncection()) {
      var response = await _locationRepo.setMainLocation(id);
      response.when(success: (doneModel) {
        emit(MyAddressState.success2(doneModel.message));
      }, failure: (failure) {
        emit(MyAddressState.failure2(failure.message ?? 'فشلة العملية'));
      });
    } else {
      emit(const MyAddressState.failure2('لا يوجد اتصال بالانترنت'));
    }
  }
}
