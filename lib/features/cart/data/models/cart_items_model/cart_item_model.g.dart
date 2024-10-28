// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) =>
    CartItemModel(
      (json['totalPrice'] as num?)?.toInt(),
      (json['cartItems'] as List<dynamic>)
          .map((e) => CartITem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );



CartITem _$CartITemFromJson(Map<String, dynamic> json) => CartITem(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['subName'] as String,
      json['image'] as String?,
      (json['price'] as num?)?.toInt(),
      (json['quilty'] as num?)?.toInt(),
      (json['discount'] as num?)?.toInt(),
      json['isFavorite'] as bool?,
      (json['priceAfterDiscount'] as num?)?.toInt(),
      (json['quantity'] as num?)?.toInt(),
      (json['productTotal'] as num?)?.toInt(),
    );


