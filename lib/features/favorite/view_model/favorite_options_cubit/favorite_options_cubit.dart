import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/favorite/data/favorite_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'favorite_options_state.dart';

class FavoriteOptionsCubit extends Cubit<FavoriteOptionsState> {
  final FavoriteRepo _favoriteRepo;
  final int productId;
  FavoriteOptionsCubit(this._favoriteRepo, this.productId)
      : super(const FavoriteOptionsState.initial());

  void addFavorite() async {
    emit(const FavoriteOptionsState.loading());
    if (await isConncection()) {
      var response = await _favoriteRepo.addFavorite(productId);
      response.when(success: (favoriteSucsessModel) {
        emit(FavoriteOptionsState.sucsess(favoriteSucsessModel.message));
      }, failure: (failure) {
        emit(FavoriteOptionsState.error(failure.message ?? 'فشلة العملية'));
      });
    } else {
      emit(const FavoriteOptionsState.error('لايتوفر إتصال بالانترنت'));
    }
  }

  void removeFavorite() async {
    emit(const FavoriteOptionsState.loading());
    if (await isConncection()) {
      var response = await _favoriteRepo.deleteFavorite(productId);
      response.when(success: (favoriteSucsessModel) {
        emit(FavoriteOptionsState.sucsess(favoriteSucsessModel.message));
      }, failure: (failure) {
        emit(FavoriteOptionsState.error(failure.message ?? 'فشلة العملية'));
      });
    } else {
      emit(const FavoriteOptionsState.error('لايتوفر أتصال بالانترنت'));
    }
  }
}
