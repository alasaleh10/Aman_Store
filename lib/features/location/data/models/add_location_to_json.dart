import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_location_to_json.g.dart';
@JsonSerializable()
class AddLocationToJson{

  final String name;
  final String type;
  final String lat;
  final String lng;
  final String street;
  final String home;
  final String roomNo;

  AddLocationToJson({
    required this.name,
    required this.type,
    required this.lat,
    required this.lng,
    required this.street,
    required this.home,
    required this.roomNo
  });
 Map<String, dynamic> toJson() => _$AddLocationToJsonToJson(this);

  
}