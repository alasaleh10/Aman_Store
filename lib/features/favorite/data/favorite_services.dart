import 'package:aman_store2/core/models/done_model.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

import '../../../core/models/product_model/list_product_model.dart';
import '../../../core/networking/api_constanses.dart';

part 'favorite_services.g.dart';

@RestApi(baseUrl: ApiConstanses.baseUrl)
abstract class FavoriteServises {
  factory FavoriteServises(Dio dio, {String baseUrl}) = _FavoriteServises;

  @GET(ApiConstanses.myFavorite)
  Future<ListProductModel> getFavorite();
  @POST(ApiConstanses.addFavorite)
  Future<DoneModel> addFavorite(@Body() Map<String, dynamic> data);
  @DELETE(ApiConstanses.deleteFavorite)
  Future<DoneModel> deleteFavorite(@Body() Map<String, dynamic> data);
}
