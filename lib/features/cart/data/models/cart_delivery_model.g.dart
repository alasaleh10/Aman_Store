// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_delivery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartDeliveryModel _$CartDeliveryModelFromJson(Map<String, dynamic> json) =>
    CartDeliveryModel(
      locationModel:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      delivery: json['delivery'] as num?,
    );

Map<String, dynamic> _$CartDeliveryModelToJson(CartDeliveryModel instance) =>
    <String, dynamic>{
      'delivery': instance.delivery,
      'location': instance.locationModel,
    };