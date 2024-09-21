import 'package:json_annotation/json_annotation.dart';
part 'favorite_sucsess_model.g.dart';
@JsonSerializable()
class FavoriteSucsessModel {
  final bool status;
  final String message;
  FavoriteSucsessModel({required this.status,required this.message});
  factory FavoriteSucsessModel.fromJson(Map<String, dynamic> json) =>_$FavoriteSucsessModelFromJson(json);
  
}