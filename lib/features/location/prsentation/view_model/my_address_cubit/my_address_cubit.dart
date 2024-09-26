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
        emit(MyAddressState.failure(failure.message ?? 'فشلةالعملية'));
      });
    } else {
      emit(const MyAddressState.noInternet());
    }
  }
}
