import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/product_model/list_product_model.dart';
part 'categoriee_products_state.freezed.dart';

@freezed
class CategorieeProductsState with _$CategorieeProductsState {
  const factory CategorieeProductsState.initial() = Initial;
  const factory CategorieeProductsState.sucsess(
      {required ListProductModel products}) = Sucsess;
  const factory CategorieeProductsState.error({required String error}) = Error;
  const factory CategorieeProductsState.loading() = Loading;
  const factory CategorieeProductsState.noInternet() = NoInternet;
  const factory CategorieeProductsState.fromOpreations() = FromOpreations;
}
