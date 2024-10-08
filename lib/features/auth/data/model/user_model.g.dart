// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      User.fromJson(json['user'] as Map<String, dynamic>),
      json['token'] as String?,
      (json['order'] as num?)?.toInt(),
    );


User _$UserFromJson(Map<String, dynamic> json) => User(
      (json['id'] as num).toInt(),
      json['firstName'] as String,
      json['lastName'] as String?,
      json['email'] as String,
      json['phone'] as String,
      (json['credit'] as num).toInt(),
      (json['points'] as num).toInt(),
      json['isAdmin'] as bool,
      json['image'] as String,
      json['isApproved'] as bool,
    );

