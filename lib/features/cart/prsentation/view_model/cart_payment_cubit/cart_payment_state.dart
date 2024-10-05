
import 'package:aman_store2/features/cart/data/models/coupon_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/add_order_done_model.dart';
part 'cart_payment_state.freezed.dart';
@freezed
class CartPaymentState with _$CartPaymentState {
  const factory CartPaymentState.initial() = Initial;
  const factory CartPaymentState.loading() = Loading;
  const factory CartPaymentState.success() = Success;
  const factory CartPaymentState.success2(CouponModel couponModel) = Success2;
const factory CartPaymentState.success3() = Success3;
  const factory CartPaymentState.failure(String message) = Failure;
const factory CartPaymentState.success4(AddOrderDoneModel addOrderDoneModel) = Success4;

}
