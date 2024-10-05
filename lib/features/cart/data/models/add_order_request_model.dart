import 'package:json_annotation/json_annotation.dart';

part 'add_order_request_model.g.dart';
@JsonSerializable()
class AddOrderRequestModel {
  final int? coupon;
  final bool? isDelivery;
  final int? deliveryPrice;
  final int? location;
  final bool? isFastDelivery;
  final int totalCart;
  final int paymentType;
  @JsonKey(name: 'totalOrder')
  final int totalOrderPrice;
  final List<Map<String,dynamic>> items;

  AddOrderRequestModel(
      { this.coupon,
       this.isDelivery,
       this.deliveryPrice,
       this.location,
       this.isFastDelivery,
      required this.totalCart,
      required this.paymentType,
      required this.totalOrderPrice,
      required this.items});
      Map<String, dynamic> toJson() =>_$AddOrderRequestModelToJson(this);
}
