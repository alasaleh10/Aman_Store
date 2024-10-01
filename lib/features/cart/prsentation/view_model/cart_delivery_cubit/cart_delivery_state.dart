
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/cart_delivery_model.dart';
part 'cart_delivery_state.freezed.dart';
@freezed
class CartDeliveryState with _$CartDeliveryState {
  const factory CartDeliveryState.initial() = Initial;

  const factory CartDeliveryState.loading() = Loading;

  const factory CartDeliveryState.sucsess(CartDeliveryModel cartDeliveryModel) = Sucsess;

  const factory CartDeliveryState.failure(String message) = Failure;

  const factory CartDeliveryState.noInternet() = Nointernet;
  const factory CartDeliveryState.noLocation(String message) = NoLocation;

}
