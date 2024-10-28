
import 'package:aman_store2/features/orders/data/models/orders_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_order_state.freezed.dart';
@freezed
class SearchOrderState with _$SearchOrderState {
  const factory SearchOrderState.initial() = SearchOrderInitial;
  const factory SearchOrderState.loading() = SearchOrderLoading;
  const factory SearchOrderState.sucsess(Order order) = SearchOrderSucsess;
  const factory SearchOrderState.error(String error) = SearchOrderError;
  const factory SearchOrderState.noInternet() = SearchOrderNointernet;

}
