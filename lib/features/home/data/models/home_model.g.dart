// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      (json['banars'] as List<dynamic>)
          .map((e) => BannarsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['categorie'] as List<dynamic>)
          .map((e) => CategorieeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['bestSellingProducts'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['locationName'] as String?,
    );

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'locationName': instance.locationName,
      'banars': instance.banars,
      'categorie': instance.categories,
      'bestSellingProducts': instance.bestSellingProducts,
    };
