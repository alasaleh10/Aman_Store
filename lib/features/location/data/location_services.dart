import 'dart:async';

import 'package:aman_store2/core/models/done_model.dart';
import 'package:aman_store2/core/networking/api_constanses.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import 'models/add_location_to_json.dart';
import 'models/list_locations_model.dart';

import 'models/location_model.dart';

part 'location_services.g.dart';

@RestApi(baseUrl: ApiConstanses.baseUrl)
abstract class LocationServices {
  factory LocationServices(Dio dio, {String baseUrl}) = _LocationServices;

  @POST(ApiConstanses.addLocation)
  Future<DoneModel> addLocation(
      @Body() AddLocationToJson addLocationToJson);

  @GET(ApiConstanses.myLocations)
  Future<ListLocationsModel> getMyLocations();

  @GET('${ApiConstanses.spicificLocation}/{id}')
  Future<LocationsModel> spicificLocation(@Path('id') int id);

  @DELETE('${ApiConstanses.deleteLocation}/{id}')
  Future<DoneModel> deleteLocation(@Path('id') int id);
  @PUT('${ApiConstanses.changeMainLocation}/{id}')
  Future<DoneModel> setMainLocation(@Path('id') int id);
}
