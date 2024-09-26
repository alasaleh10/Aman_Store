import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/networking/api_constanses.dart';
import 'model/product_detils_model.dart';
part 'p_detils_serviss.g.dart';

@RestApi(baseUrl: ApiConstanses.baseUrl)
abstract class ProductDetilsServiss {
  factory ProductDetilsServiss(Dio dio, {String baseUrl}) =
      _ProductDetilsServiss;

  @GET('${ApiConstanses.getSpicificProduct}/{id}')
  Future<ProductDtilsModel> getProductDetails(@Path("id") int id);
}
