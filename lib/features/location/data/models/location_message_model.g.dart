// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationMessageModel _$LocationMessageModelFromJson(
        Map<String, dynamic> json) =>
    LocationMessageModel(
      status: json['status'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$LocationMessageModelToJson(
        LocationMessageModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
