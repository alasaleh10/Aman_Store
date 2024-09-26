import 'package:json_annotation/json_annotation.dart';

import 'product_model.dart';
part 'list_product_model.g.dart';

@JsonSerializable()
class ListProductModel {
  final bool status;
  @JsonKey(name: 'products')
  final List<ProductModel> productModel;

  ListProductModel({
    required this.status,
    required this.productModel,
  });
  factory ListProductModel.fromJson(Map<String, dynamic> json) =>
      _$ListProductModelFromJson(json);
}
