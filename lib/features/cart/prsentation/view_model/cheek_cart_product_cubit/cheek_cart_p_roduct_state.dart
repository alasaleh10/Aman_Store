
import 'package:aman_store2/core/models/done_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/cheek_cart_product_model.dart';
part 'cheek_cart_p_roduct_state.freezed.dart';
@freezed
class CheekCartPRoductState with _$CheekCartPRoductState {
  const factory CheekCartPRoductState.initial() = Initial;
  const factory CheekCartPRoductState.loading() = Loading;
  const factory CheekCartPRoductState.sucsess(CheekCartProductModel cartProductModel) = Sucsess;
  const factory CheekCartPRoductState.failure(String message) = Failure;
  // 2
  const factory CheekCartPRoductState.loading2() = Loading2;
  const factory CheekCartPRoductState.failure2(String message) = Failure2;
  const factory CheekCartPRoductState.sucsess2(DoneModel doneModel) = Sucsess2;



  

}
