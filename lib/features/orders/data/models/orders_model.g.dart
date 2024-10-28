// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersModel _$OrdersModelFromJson(Map<String, dynamic> json) => OrdersModel(
      order: (json['orders'] as List<dynamic>)
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );


Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      (json['id'] as num?)?.toInt(),
      (json['status'] as num?)?.toInt(),
      json['isDelivery'] as bool?,
      json['totalOrder'] as num?,
      json['preparingDate'] as String?,
      (json['paymentType'] as num?)?.toInt(),
      json['deliveryDate'] as String?,
      json['createdAt'] as String?,
    );


