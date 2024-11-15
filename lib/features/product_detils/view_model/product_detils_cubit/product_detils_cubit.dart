import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/detils_repo.dart';
import 'product_detils_state.dart';

class ProductDetilsCubit extends Cubit<ProductDetilsState> {
  final ProductDetilsRepo _productDetilsRepo;
  final int productId;
  ProductDetilsCubit(this._productDetilsRepo, this.productId)
      : super(const ProductDetilsState.initial());

  void getSpicificProduct(
      {int? newproductId, bool isFromRefresh = false}) async {
    if (!isFromRefresh) {
      emit(const ProductDetilsState.loading());
    }
    if (await isConncection()) {
      var response = await _productDetilsRepo
          .getSpicificProduct(newproductId ?? productId);
      response.when(success: (data) {
        emit(ProductDetilsState.loaded(model: data));
      }, failure: (failure) {
        emit(
            ProductDetilsState.error(error: failure.message ?? 'فشلة العملية'));
      });
    } else {
      emit(const ProductDetilsState.noInternet());
    }
  }
}
