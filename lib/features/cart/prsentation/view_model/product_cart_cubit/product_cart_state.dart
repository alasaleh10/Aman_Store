
import 'package:aman_store2/core/models/done_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_cart_state.freezed.dart';
@freezed
class ProductCartState with _$ProductCartState {
  const factory ProductCartState.initial() = Initial;
  const factory ProductCartState.loading() = Loading;
  const factory ProductCartState.sucsess(DoneModel doneModel) = Sucsess;
  const factory ProductCartState.failure(String message) = Failure;
  const factory ProductCartState.noInternet() = Nointernet;
}
