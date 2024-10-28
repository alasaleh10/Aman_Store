import 'package:aman_store2/features/location/data/models/location_model.dart';

String fullLocation(LocationModel locationModel) {

  String location = '${locationModel.name} - ${locationModel.street}';

  if (locationModel.home != null) {
    location = '$location - ${locationModel.home}';
  }
  if (locationModel.roomNo != null) {
    location = '$location - ${locationModel.roomNo}';
  }

  return location;
}
