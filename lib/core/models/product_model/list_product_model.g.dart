// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListProductModel _$ListProductModelFromJson(Map<String, dynamic> json) =>
    ListProductModel(
      status: json['status'] as bool,
      productModel: (json['products'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

