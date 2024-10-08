import 'package:json_annotation/json_annotation.dart';

part 'cheek_cart_product_model.g.dart';
@JsonSerializable()
class CheekCartProductModel {
  final bool status;
  final int quantity;
  CheekCartProductModel({required this.status, required this.quantity});

 factory CheekCartProductModel.fromJson(Map<String, dynamic> json) =>
      _$CheekCartProductModelFromJson(json);
}
