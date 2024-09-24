import 'package:aman_store2/core/models/done_model.dart';
import 'package:aman_store2/features/location/data/models/add_location_to_json.dart';
import 'package:aman_store2/features/location/data/models/list_locations_model.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../location_services.dart';

import '../models/location_model.dart';

class LocationRepo {
  final LocationServices _locationService;

  LocationRepo(this._locationService);

  Future<ApiResult<LocationModel>> addLocation(
      AddLocationToJson addLocationToJson) async {
    try {
      var response = await _locationService.addLocation(addLocationToJson);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  Future<ApiResult<ListLocationsModel>> getMyLocations() async {
    try {
     
      var response = await _locationService.getMyLocations();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
  Future<ApiResult<LocationsModel>> spicificLocation(int id) async {
    try {
      var response = await _locationService.spicificLocation(id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  Future<ApiResult<DoneModel>> deleteLocation(int id) async {
    try {
      var response = await _locationService.deleteLocation(id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
