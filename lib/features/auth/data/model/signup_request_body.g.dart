// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequestBody _$SignUpRequestBodyFromJson(Map<String, dynamic> json) =>
    SignUpRequestBody(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String?,
      email: json['email'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String,
    );

Map<String, dynamic> _$SignUpRequestBodyToJson(SignUpRequestBody instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
    };
