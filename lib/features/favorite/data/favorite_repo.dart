import 'package:aman_store2/core/networking/api_result.dart';
import 'package:aman_store2/features/favorite/data/model/favorite_sucsess_model.dart';

import '../../../core/models/product_model/list_product_model.dart';
import '../../../core/networking/api_error_handler.dart';
import 'favorite_services.dart';

class FavoriteRepo {
  final FavoriteServises _favoriteServises;

  FavoriteRepo(this._favoriteServises);

  Future<ApiResult<ListProductModel>> getFavorite() async {
    try {
      var response = await _favoriteServises.getFavorite();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  Future<ApiResult<FavoriteSucsessModel>> addFavorite(int id) async {
    try {
      var response = await _favoriteServises.addFavorite({"product": id});
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  Future<ApiResult<FavoriteSucsessModel>> deleteFavorite(int id) async {
    try {
      var response = await _favoriteServises.deleteFavorite({"product": id});
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}