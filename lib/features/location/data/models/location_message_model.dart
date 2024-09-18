import 'package:freezed_annotation/freezed_annotation.dart';
part 'location_message_model.g.dart';
@JsonSerializable()
class LocationMessageModel

{
  final bool status;
  final String message;

  LocationMessageModel({required this.status, required this.message});

  factory LocationMessageModel.fromJson(Map<String, dynamic> json) =>_$LocationMessageModelFromJson(json);

}