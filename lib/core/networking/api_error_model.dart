import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final bool? status;
  final int? statusCode;
  ApiErrorModel({this.message, this.status, this.statusCode});
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
}
