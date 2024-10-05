// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationsModel _$LocationsModelFromJson(Map<String, dynamic> json) =>
    LocationsModel(
      status: json['status'] as bool,
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
    );



LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    LocationModel(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      name: json['name'] as String,
      lat: json['lat'] as String,
      lng: json['lng'] as String,
      street: json['street'] as String,
      home: json['home'] as String?,
      isMain: json['isMain'] as bool?,
      roomNo: json['roomNo'] as String?,
    );


