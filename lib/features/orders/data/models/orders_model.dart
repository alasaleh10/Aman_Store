import 'package:json_annotation/json_annotation.dart';
part 'orders_model.g.dart';
@JsonSerializable()
class OrdersModel {
  @JsonKey(name: 'orders')
  final List<Order> order;

  OrdersModel({required this.order});
  factory OrdersModel.fromJson(Map<String, dynamic> json) =>_$OrdersModelFromJson(json);
}

@JsonSerializable()
class Order {
  final int? id;
  final int? status;
  final bool? isDelivery;
  final num? totalOrder;
  final String? preparingDate;
  final int? paymentType;
  final String? deliveryDate;
  final String? createdAt;

  Order(
    this.id,
    this.status,
    this.isDelivery,
    this.totalOrder,
    this.preparingDate,
    this.paymentType,
    this.deliveryDate,
    this.createdAt,
  );

  factory Order.fromJson(Map<String, dynamic> json) =>_$OrderFromJson(json);
}
