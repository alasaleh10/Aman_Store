

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/product_model/list_product_model.dart';
part 'favorite_state.freezed.dart';
@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = Initial;
  const factory FavoriteState.loading() = Loading;
  const factory FavoriteState.sucsess(ListProductModel product) = Sussess;
  const factory FavoriteState.error(String error) = Error;
  const factory FavoriteState.noInternet() = NoInternet;
  const factory FavoriteState.fromOpreations() = FromOpreations;
}
