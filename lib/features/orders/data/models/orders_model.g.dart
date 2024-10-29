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

Map<String, dynamic> _$OrdersModelToJson(OrdersModel instance) =>
    <String, dynamic>{
      'orders': instance.order,
    };

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

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'isDelivery': instance.isDelivery,
      'totalOrder': instance.totalOrder,
      'preparingDate': instance.preparingDate,
      'paymentType': instance.paymentType,
      'deliveryDate': instance.deliveryDate,
      'createdAt': instance.createdAt,
    };
