import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/product_detils_model.dart';
part 'product_detils_state.freezed.dart';

@freezed
class ProductDetilsState with _$ProductDetilsState {
  const factory ProductDetilsState.initial() = Initial;
  const factory ProductDetilsState.loading() = Loading;
  const factory ProductDetilsState.loaded({required ProductDtilsModel model}) =
      Loaded;
  const factory ProductDetilsState.error({required String error}) = Error;
  const factory ProductDetilsState.noInternet() = Nointernet;
}
