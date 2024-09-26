import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String firstName;
  final String? lastName;
  final String email;
  final String phone;
  final String password;
  final String confirmPassword;

  SignUpRequestBody({
    required this.firstName,
    this.lastName,
    required this.email,
    required this.phone,
    required this.password,
    required this.confirmPassword,
  });

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
