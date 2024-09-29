import 'package:json_annotation/json_annotation.dart';

part 'cart_item_model.g.dart';

@JsonSerializable()
class CartItemModel {
  final int? totalPrice;
  @JsonKey(name: 'cartItems')
  final List<CartITem> items;

  CartItemModel(
    this.totalPrice,
    this.items,
  );
  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
}

@JsonSerializable()
class CartITem {
  final int? id;
  final String? name;
  final String subName;
  final String? image;
  final int? price;
  final int? quilty;
  final int? discount;
  final bool? isFavorite;
  final int? priceAfterDiscount;
  final int? quantity;
  final int? productTotal;

  CartITem(
    this.id,
    this.name,
    this.subName,
    this.image,
    this.price,
    this.quilty,
    this.discount,
    this.isFavorite,
    this.priceAfterDiscount,
    this.quantity,
    this.productTotal
  );
  factory CartITem.fromJson(Map<String, dynamic> json) =>
      _$CartITemFromJson(json);
}
