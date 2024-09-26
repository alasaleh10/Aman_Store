// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_location_to_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddLocationToJson _$AddLocationToJsonFromJson(Map<String, dynamic> json) =>
    AddLocationToJson(
      name: json['name'] as String,
      type: json['type'] as String,
      lat: json['lat'] as String,
      lng: json['lng'] as String,
      street: json['street'] as String,
      home: json['home'] as String,
      roomNo: json['roomNo'] as String,
    );

Map<String, dynamic> _$AddLocationToJsonToJson(AddLocationToJson instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'lat': instance.lat,
      'lng': instance.lng,
      'street': instance.street,
      'home': instance.home,
      'roomNo': instance.roomNo,
    };
