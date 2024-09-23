import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/home/data/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'new_aman_state.dart';

class NewAmanCubit extends Cubit<NewAmanState> {
  final HomeRepo _homeRepo;
  NewAmanCubit(this._homeRepo) : super(const NewAmanState.initial());

  void getAmanProducts({bool isFromFavorite = false}) async {
    if (!isFromFavorite) {
      emit(const NewAmanState.loading());
    }

    if (await isConncection()) {
      var response = await _homeRepo.newAmanProducts();
      response.when(success: (model) {
        emit(NewAmanState.sucsess(model));
      }, failure: (error) {
        emit(NewAmanState.error(error.message ?? 'فشلة العملية'));
      });
    } else {
      emit(const NewAmanState.error('تعذر الإتصال بالإنترنت'));
    }
  }
}
