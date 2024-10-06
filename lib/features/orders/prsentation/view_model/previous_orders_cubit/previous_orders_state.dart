

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/orders_model.dart';
part 'previous_orders_state.freezed.dart';
@freezed
class PreviousOrdersState with _$PreviousOrdersState {
  const factory PreviousOrdersState.initial() = Initial;
  const factory PreviousOrdersState.loading() = Loading;
  const factory PreviousOrdersState.success(OrdersModel ordersModel) = Success;
  const factory PreviousOrdersState.failure(String error) = Failure;
  const factory PreviousOrdersState.noInternet() = NoInternet;
}
