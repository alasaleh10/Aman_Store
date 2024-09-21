import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/categoriess/data/repo/categoriess_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'categoriee_products_state.dart';

class CategorieeProductsCubit extends Cubit<CategorieeProductsState> {
  final CategoriessRepo _categoriessRepo;
  final int catId;
  CategorieeProductsCubit(this._categoriessRepo, this.catId)
      : super(const CategorieeProductsState.initial());

  void getProducts({bool isFromOpretion=false}) async {

    if(isFromOpretion)
    {
emit(const CategorieeProductsState.fromOpreations());
    }
    else
    {
    emit(const CategorieeProductsState.loading());

    }

    if (await isConncection()) {
      var response = await _categoriessRepo.getCategorieeProducts(catId);
      response.when(success: (products) {
        emit(CategorieeProductsState.sucsess(products: products));
      }, failure: (failure) {
        emit(CategorieeProductsState.error(
            error: failure.message ?? 'فشلة العملية'));
      });
    } else {
      emit(const CategorieeProductsState.noInternet());
    }
  }
}
