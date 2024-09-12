// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      User.fromJson(json['user'] as Map<String, dynamic>),
      json['token'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };

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

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'credit': instance.credit,
      'points': instance.points,
      'isAdmin': instance.isAdmin,
      'image': instance.image,
      'isApproved': instance.isApproved,
    };
