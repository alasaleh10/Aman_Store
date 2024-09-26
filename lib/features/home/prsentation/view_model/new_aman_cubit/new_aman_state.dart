import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/product_model/list_product_model.dart';
part 'new_aman_state.freezed.dart';

@freezed
class NewAmanState with _$NewAmanState {
  const factory NewAmanState.initial() = _Initial;
  const factory NewAmanState.loading() = _Loading;
  const factory NewAmanState.sucsess(ListProductModel model) = _Sucsess;
  const factory NewAmanState.error(String error) = _Error;
}
