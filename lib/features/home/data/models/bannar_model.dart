import 'package:json_annotation/json_annotation.dart';
part 'bannar_model.g.dart';
@JsonSerializable()
class BannarsModel
{
  final String image;

  BannarsModel(this.image);
  factory BannarsModel.fromJson(Map<String, dynamic> json) =>
      _$BannarsModelFromJson(json);
}