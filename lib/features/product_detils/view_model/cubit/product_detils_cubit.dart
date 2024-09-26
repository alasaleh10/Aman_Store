import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/detils_repo.dart';
import '../product_detils_cubit/product_detils_state.dart';

class ProductDetilsCubit extends Cubit<ProductDetilsState> {
  final ProductDetilsRepo _productDetilsRepo;
  final int productId;
  ProductDetilsCubit(this._productDetilsRepo, this.productId)
      : super(const ProductDetilsState.initial());

  void getSpicificProduct() async {
    emit(const ProductDetilsState.loading());
    if (await isConncection()) {
      var response = await _productDetilsRepo.getSpicificProduct(productId);
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
