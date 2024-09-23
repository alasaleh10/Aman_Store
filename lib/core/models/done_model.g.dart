// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'done_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoneModel _$DoneModelFromJson(Map<String, dynamic> json) => DoneModel(
      status: json['status'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$DoneModelToJson(DoneModel instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
