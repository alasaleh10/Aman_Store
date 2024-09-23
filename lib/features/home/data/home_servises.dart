
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/models/product_model/list_product_model.dart';
import '../../../core/networking/api_constanses.dart';
part 'home_servises.g.dart';
@RestApi(baseUrl: ApiConstanses.baseUrl)
abstract class HomeServices
{
  factory HomeServices(Dio dio, {String baseUrl}) = _HomeServices;

  @GET(ApiConstanses.newAmanProducts)
  Future<ListProductModel> newAmanProducts();
  @GET(ApiConstanses.searchProduct)
  Future<ListProductModel> searchProduct(@Query('search') String search);



}