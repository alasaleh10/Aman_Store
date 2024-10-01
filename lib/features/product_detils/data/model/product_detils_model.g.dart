// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detils_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDtilsModel _$ProductDtilsModelFromJson(Map<String, dynamic> json) =>
    ProductDtilsModel(
      similerProducts: (json['similarProducts'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );



Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      subName: json['subName'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      price: (json['price'] as num).toInt(),
      quilty: (json['quilty'] as num).toInt(),
      discount: (json['discount'] as num).toInt(),
      priceAfterDiscount: (json['priceAfterDiscount'] as num).toInt(),
      images: (json['images'] as List<dynamic>)
          .map((e) => ProductImages.fromJson(e as Map<String, dynamic>))
          .toList(),
    );



ProductImages _$ProductImagesFromJson(Map<String, dynamic> json) =>
    ProductImages(
      imag: json['imag'] as String,
    );

