

import 'package:aman_store2/core/functions/cheek_internet.dart';

import 'package:aman_store2/features/categoriess/data/repo/categoriess_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'all_categoriees_state.dart';

class AllCategorieesCubit extends Cubit<AllCategorieesState> {
  final CategoriessRepo _categoriessRepo;
  AllCategorieesCubit(this._categoriessRepo) : super(const AllCategorieesState.initial());

  void getAllCategoriess()async
  {
    emit(const AllCategorieesState.loading());
    if(await isConncection())
    {
      var response=await _categoriessRepo.getAllCategoriees();
      response.when(success: (categoriees)
      {
        emit(AllCategorieesState.success(categoriees));
      }, failure: (failure)
      {
        emit(AllCategorieesState.error(error: failure.message??'فشلةالعملية'));
      });

    }
    else
    {
      emit( const AllCategorieesState.noInternet());
    }
  }

}
