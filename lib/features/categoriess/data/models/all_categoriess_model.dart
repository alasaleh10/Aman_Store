import 'package:json_annotation/json_annotation.dart';

part 'all_categoriess_model.g.dart';

@JsonSerializable()
class AllCategoriessModel {
  final bool status;
  @JsonKey(name: 'categories')
  final List<CategorieeModel> categorieeModel;

  AllCategoriessModel({
    required this.status,
    required this.categorieeModel,
  });
  factory AllCategoriessModel.fromJson(Map<String, dynamic> json) =>
      _$AllCategoriessModelFromJson(json);
}

@JsonSerializable()
class CategorieeModel {
  final int id;
  final String name;
  final String image;


  CategorieeModel({
    required this.id,
    required this.name,
    required this.image,
    
  });

  factory CategorieeModel.fromJson(Map<String, dynamic> json) =>
      _$CategorieeModelFromJson(json);
}
