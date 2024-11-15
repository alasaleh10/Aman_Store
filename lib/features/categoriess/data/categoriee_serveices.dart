import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../core/models/product_model/list_product_model.dart';
import '../../../core/networking/api_constanses.dart';
import 'models/all_categoriess_model.dart';
part 'categoriee_serveices.g.dart';

@RestApi(baseUrl: ApiConstanses.baseUrl)
abstract class CategorieeServices {
  factory CategorieeServices(Dio dio, {String baseUrl}) = _CategorieeServices;

  @GET(ApiConstanses.allCategories)
  Future<AllCategoriessModel> allCategoriee();

  @GET('${ApiConstanses.categorieeProducts}/{id}')
  Future<ListProductModel> getCategorieeProducts(@Path('id') int id);
}
