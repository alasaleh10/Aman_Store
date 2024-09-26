import 'package:json_annotation/json_annotation.dart';
part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  final int id;
  final String name;
  final String subName;
  final String description;
  final int price;
  final String image;
  final int quilty;
  final int discount;
  final int priceAfterDiscount;
  final bool? isFavorite;

  ProductModel(
      {required this.id,
      required this.name,
      required this.subName,
      required this.description,
      required this.price,
      required this.image,
      required this.quilty,
      required this.discount,
      required this.priceAfterDiscount,
      required this.isFavorite});

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
