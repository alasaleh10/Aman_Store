import 'package:json_annotation/json_annotation.dart';
part 'coupon_model.g.dart';
@JsonSerializable()
class CouponModel
{
  final int id;
  final String code;
  final int discount;

  CouponModel({
    required this.id,
    required this.code,
    required this.discount, 
  });
  factory CouponModel.fromJson(Map<String, dynamic> json) =>
   _$CouponModelFromJson(json['coupon']);
}