import 'package:json_annotation/json_annotation.dart';

import '../../../../core/models/product_model/product_model.dart';

part 'product_detils_model.g.dart';

@JsonSerializable()
class ProductDtilsModel {
  final Product product;
  @JsonKey(name: 'similarProducts')
  final List<ProductModel> similerProducts;

  ProductDtilsModel({
    required this.similerProducts,
   required this.product
  });
  factory ProductDtilsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDtilsModelFromJson(json);
}

@JsonSerializable()
class Product {
  final int id;
  final String name;
  final String subName;
  final String description;
  final String image;
  final int price;
  final int quilty;
  final int discount;
  final int priceAfterDiscount;
  @JsonKey(name: 'images')
  final List<ProductImages> images;

  Product(
      {required this.id,
      required this.name,
      required this.subName,
      required this.description,
      required this.image,
      required this.price,
      required this.quilty,
      required this.discount,
      required this.priceAfterDiscount,
      required this.images});
      factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@JsonSerializable()
class ProductImages {
  final String imag;

  ProductImages({required this.imag});
  factory ProductImages.fromJson(Map<String, dynamic> json) =>
      _$ProductImagesFromJson(json);
}
