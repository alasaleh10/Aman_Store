import 'package:aman_store2/features/location/data/models/location_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'order_detils_model.g.dart';

@JsonSerializable()
class OrderDetilsModel {
  final int id;
  final int status;
  final String? coupon;
  final bool? isDelivery;
  final num? deliveryPrice;
  final num? totalCart;
  final num? totalOrder;
  final String? preparingDate;
  final int paymentType;
  final String? deliveryDate;
  final String createdAt;
  final String? recivedDate;
  final List<OrderItems> orderItems;
  @JsonKey(name: 'location')
  final LocationModel? location;

  OrderDetilsModel(
      this.id,
      this.status,
      this.coupon,
      this.isDelivery,
      this.deliveryPrice,
      this.totalCart,
      this.totalOrder,
      this.preparingDate,
      this.paymentType,
      this.deliveryDate,
      this.createdAt,
      this.orderItems,
      this.location,
      this.recivedDate
      );

  factory OrderDetilsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetilsModelFromJson(json['orders']);
}

@JsonSerializable()
class OrderItems {
  @JsonKey(name: 'product')
  final int productID;
  final int quantity;
  final num price;
  final String? name;
  final String? subName;
  final String? image;

  OrderItems(
    this.productID,
    this.quantity,
    this.price,
    this.name,
    this.subName,
    this.image,
  );
  factory OrderItems.fromJson(Map<String, dynamic> json) =>
      _$OrderItemsFromJson(json);
}
