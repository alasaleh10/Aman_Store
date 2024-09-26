// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'location_model.dart';

// part 'list_locations_model.g.dart';

// @JsonSerializable()
// class ListLocationsModel {

//   final bool status;
//   @JsonKey(name: 'location')
//   final List<LocationModel> locations;

//   ListLocationsModel({
//     required this.status,
//     required this.locations,
//   });

//   factory ListLocationsModel.fromJson(Map<String, dynamic> json) =>
//       _$ListLocationsModelFromJson(json);
// }
import 'package:freezed_annotation/freezed_annotation.dart';
import 'location_model.dart';

part 'list_locations_model.g.dart';

@JsonSerializable()
class ListLocationsModel {
  final bool status;
  @JsonKey(name: 'location')
  final List<LocationModel> locations;

  ListLocationsModel({
    required this.status,
    required this.locations,
  });

  factory ListLocationsModel.fromJson(Map<String, dynamic> json) =>
      _$ListLocationsModelFromJson(json);
  // factory ListLocationsModel.fromJson(Map<String, dynamic> json) {
  //   return ListLocationsModel(
  //     status: json['status'] as bool,
  //     locations: (json['location'] as List<dynamic>?)?.map((e) => LocationModel.fromJson(e as Map<String, dynamic>)).toList() ?? [],
  //   );
  // }
}
