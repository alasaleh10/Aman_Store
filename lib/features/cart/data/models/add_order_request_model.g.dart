// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_order_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOrderRequestModel _$AddOrderRequestModelFromJson(
        Map<String, dynamic> json) =>
    AddOrderRequestModel(
      coupon: (json['coupon'] as num?)?.toInt(),
      isDelivery: json['isDelivery'] as bool?,
      deliveryPrice: (json['deliveryPrice'] as num?)?.toInt(),
      location: (json['location'] as num?)?.toInt(),
      isFastDelivery: json['isFastDelivery'] as bool?,
      totalCart: (json['totalCart'] as num).toInt(),
      paymentType: (json['paymentType'] as num).toInt(),
      totalOrderPrice: (json['totalOrder'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$AddOrderRequestModelToJson(
        AddOrderRequestModel instance) =>
    <String, dynamic>{
      'coupon': instance.coupon,
      'isDelivery': instance.isDelivery,
      'deliveryPrice': instance.deliveryPrice,
      'location': instance.location,
      'isFastDelivery': instance.isFastDelivery,
      'totalCart': instance.totalCart,
      'paymentType': instance.paymentType,
      'totalOrder': instance.totalOrderPrice,
      'items': instance.items,
    };
