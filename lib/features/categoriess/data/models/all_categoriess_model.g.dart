// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_categoriess_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllCategoriessModel _$AllCategoriessModelFromJson(Map<String, dynamic> json) =>
    AllCategoriessModel(
      status: json['status'] as bool,
      categorieeModel: (json['categories'] as List<dynamic>)
          .map((e) => CategorieeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllCategoriessModelToJson(
        AllCategoriessModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'categories': instance.categorieeModel,
    };

CategorieeModel _$CategorieeModelFromJson(Map<String, dynamic> json) =>
    CategorieeModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$CategorieeModelToJson(CategorieeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'isActive': instance.isActive,
    };
