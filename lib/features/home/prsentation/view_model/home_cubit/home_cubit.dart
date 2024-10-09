import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/home/data/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  bool? isSucsess;
  String? location;
  void getHome({bool isFromRefreshing = false}) async {
    if (!isFromRefreshing) {
      emit(HomeState.loading());
    }

    if (await isConncection()) {
      var response = await _homeRepo.getHome();

      response.when(success: (homeModel) {
        isSucsess=true;
        location=homeModel.locationName;
        emit(HomeState.sucsess(homeModel));
      }, failure: (failure) {
        if (isFromRefreshing) {
          emit(HomeState.failure2(failure.message ?? 'فشلة العملية'));
        } else {
          emit(HomeState.failure(failure.message ?? 'فشلة العملية'));
        }
      });
    } else {
      if (isFromRefreshing) {
        emit(HomeState.failure2('فشل الاتصال بالانترنت'));
      } else {
        emit(HomeState.noInternet());
      }
    }
  }
}
