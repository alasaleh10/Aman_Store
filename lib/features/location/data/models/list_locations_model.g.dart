// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_locations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListLocationsModel _$ListLocationsModelFromJson(Map<String, dynamic> json) =>
    ListLocationsModel(
      status: json['status'] as bool,
      locations: (json['location'] as List<dynamic>)
          .map((e) => LocationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListLocationsModelToJson(ListLocationsModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'location': instance.locations,
    };
