import 'package:aman_store2/core/networking/api_error_handler.dart';

import '../../../core/networking/api_result.dart';
import 'model/product_detils_model.dart';
import 'p_detils_serviss.dart';

class ProductDetilsRepo {
  final ProductDetilsServiss _productDetilsServiss;
  ProductDetilsRepo(this._productDetilsServiss);

  Future<ApiResult<ProductDtilsModel>> getSpicificProduct(int id) async {
    try {
      var response = await _productDetilsServiss.getProductDetails(id);
      return ApiResult.success(response);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }
}
