import 'package:freezed_annotation/freezed_annotation.dart';
part 'location_model.g.dart';

@JsonSerializable()
class LocationsModel {
  final bool status;
  @JsonKey(name: 'location')
  final LocationModel location;

  LocationsModel({required this.status, required this.location});

  factory LocationsModel.fromJson(Map<String, dynamic> json) =>
      _$LocationsModelFromJson(json);
}

@JsonSerializable()
class LocationModel {
  final int id;
  final String name;
  final String type;
  final String lat;
  final String lng;
  final String street;
  final String? home;
  final String? roomNo;
  final bool? isMain;

  LocationModel(
      {required this.id,
      required this.type,
      required this.name,
      required this.lat,
      required this.lng,
      required this.street,
      this.home,
      this.isMain,
      this.roomNo});

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
