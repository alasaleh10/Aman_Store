
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/order_detils_model.dart';
part 'order_detils_state.freezed.dart';
@freezed
class OrderDetilsState with _$OrderDetilsState {
  const factory OrderDetilsState.initial() = Initial;

  const factory OrderDetilsState.loading() = Loading;

  const factory OrderDetilsState.sucsess( OrderDetilsModel orderDetilsModel) = Sucsess;

  const factory OrderDetilsState.failure(String error) = Failure;
  const factory OrderDetilsState.noInternet() = NoInternet;

}
