import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  final int id;
  final String email;

  SignUpResponse({
    required this.id,
    required this.email,
  });
  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json['data']);
}
