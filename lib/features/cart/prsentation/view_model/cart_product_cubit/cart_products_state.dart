
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/cart_items_model/cart_item_model.dart';
part 'cart_products_state.freezed.dart';
@freezed
class CartProductsState with _$CartProductsState {
  const factory CartProductsState.initial() = Initial;
  const factory CartProductsState.loading() = Loading;
  const factory CartProductsState.sucsess(CartItemModel cartItemModel) = Sucsess;
  const factory CartProductsState.error( String message) = Error;
  const factory CartProductsState.noInternet() = Nointernet;
  const factory CartProductsState.sucsess2(String message) = Sucsess2;
  const factory CartProductsState.failure(String message) = Failure;


}
 