import 'package:aman_store2/core/networking/api_result.dart';
import 'package:aman_store2/features/categoriess/data/categoriee_serveices.dart';
import 'package:aman_store2/features/categoriess/data/models/all_categoriess_model.dart';

import '../../../../core/networking/api_error_handler.dart';

class CategoriessRepo
{
  final CategorieeServices _categorieeServices;

  CategoriessRepo(this._categorieeServices);

  Future<ApiResult<AllCategoriessModel>> getAllCategoriees()async
  {
    try {
      var response=await _categorieeServices.allCategoriee();
      return ApiResult.success(response);
      
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
      
    }
  }
}