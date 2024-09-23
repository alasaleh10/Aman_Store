// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      subName: json['subName'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toInt(),
      image: json['image'] as String,
      quilty: (json['quilty'] as num).toInt(),
      discount: (json['discount'] as num).toInt(),
      priceAfterDiscount: (json['priceAfterDiscount'] as num).toInt(),
      isFavorite: json['isFavorite'] as bool?,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subName': instance.subName,
      'description': instance.description,
      'price': instance.price,
      'image': instance.image,
      'quilty': instance.quilty,
      'discount': instance.discount,
      'priceAfterDiscount': instance.priceAfterDiscount,
      'isFavorite': instance.isFavorite,
    };
