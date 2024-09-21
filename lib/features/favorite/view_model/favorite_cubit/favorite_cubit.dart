
import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/favorite_repo.dart';
import 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final FavoriteRepo _favoriteRepo;
  FavoriteCubit(this._favoriteRepo) : super(const FavoriteState.initial());

  void getFavorite({bool isFromOPreations=false})async
  {
    if(isFromOPreations)
    {
emit(const FavoriteState.fromOpreations());
    }
    else
    {
    emit(const FavoriteState.loading());

    }
    
    if(await isConncection())
    {
      var response=await _favoriteRepo.getFavorite();
      response.when(success: (products)
      {
        emit(FavoriteState.sucsess(products));
      }, failure: (failure)
      {
        emit( FavoriteState.error(failure.message??'فشلة العملية'));
      });

    }
    else
    {
      emit(const FavoriteState.noInternet());
    }
  }
}
