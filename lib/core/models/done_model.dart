import 'package:json_annotation/json_annotation.dart';
part 'done_model.g.dart';

@JsonSerializable()
class DoneModel {
  final bool status;
  final String message;

  DoneModel({required this.status, required this.message});

  factory DoneModel.fromJson(Map<String, dynamic> json) =>
      _$DoneModelFromJson(json);
}
