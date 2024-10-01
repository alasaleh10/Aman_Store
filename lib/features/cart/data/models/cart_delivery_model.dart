
import 'package:aman_store2/features/location/data/models/location_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'cart_delivery_model.g.dart';
@JsonSerializable()
class CartDeliveryModel {
  num? delivery;
  @JsonKey(name: 'location')
 final LocationModel locationModel;

  CartDeliveryModel({required this.locationModel,this.delivery});

  factory CartDeliveryModel.fromJson(Map<String, dynamic> json) =>
  _$CartDeliveryModelFromJson(json);
}