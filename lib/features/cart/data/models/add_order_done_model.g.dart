// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_order_done_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOrderDoneModel _$AddOrderDoneModelFromJson(Map<String, dynamic> json) =>
    AddOrderDoneModel(
      id: (json['id'] as num).toInt(),
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$AddOrderDoneModelToJson(AddOrderDoneModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
    };
