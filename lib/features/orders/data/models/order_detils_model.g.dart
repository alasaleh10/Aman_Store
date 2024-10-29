// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detils_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetilsModel _$OrderDetilsModelFromJson(Map<String, dynamic> json) =>
    OrderDetilsModel(
      (json['id'] as num).toInt(),
      (json['status'] as num).toInt(),
      json['coupon'] as String?,
      json['isDelivery'] as bool?,
      json['deliveryPrice'] as num?,
      json['totalCart'] as num?,
      json['totalOrder'] as num?,
      json['preparingDate'] as String?,
      (json['paymentType'] as num).toInt(),
      json['deliveryDate'] as String?,
      json['createdAt'] as String,
      (json['orderItems'] as List<dynamic>)
          .map((e) => OrderItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      json['recivedDate'] as String?,
    );


OrderItems _$OrderItemsFromJson(Map<String, dynamic> json) => OrderItems(
      (json['product'] as num).toInt(),
      (json['quantity'] as num).toInt(),
      json['price'] as num,
      json['name'] as String?,
      json['subName'] as String?,
      json['image'] as String?,
    );

