
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/orders_model.dart';
part 'current_orders_state.freezed.dart';
@freezed
class CurrentOrdersState with _$CurrentOrdersState {
  const factory CurrentOrdersState.initial() = Initial;

  const factory CurrentOrdersState.loading() = Loading;

  const factory CurrentOrdersState.success(OrdersModel ordersModel) = Success;

  const factory CurrentOrdersState.failure(String error) = Failure;

  const factory CurrentOrdersState.noInternet() = NoInternet;
}
