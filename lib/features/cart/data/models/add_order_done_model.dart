import 'package:json_annotation/json_annotation.dart';
part 'add_order_done_model.g.dart';
@JsonSerializable()
class AddOrderDoneModel {
  final int id;
  final String createdAt;

  AddOrderDoneModel({
    required this.id,
    required this.createdAt,
  });
  factory AddOrderDoneModel.fromJson(Map<String, dynamic> json) =>
      _$AddOrderDoneModelFromJson(json['order']);

}
