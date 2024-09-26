import 'dart:developer';

import 'package:aman_store2/core/helper/sqflite_helper/sqflite_helper.dart';
import 'package:aman_store2/core/networking/api_error_handler.dart';
import 'package:aman_store2/features/home/data/home_servises.dart';

import '../../../core/models/product_model/list_product_model.dart';
import '../../../core/networking/api_result.dart';
import 'models/search_model.dart';

class HomeRepo {
  final HomeServices _homeServices;

  HomeRepo(this._homeServices);

  Future<ApiResult<ListProductModel>> newAmanProducts() async {
    try {
      var response = await _homeServices.newAmanProducts();
      return ApiResult.success(response);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }

  Future<ApiResult<ListProductModel>> searchProduct(String search) async {
    try {
      var response = await _homeServices.searchProduct(search);
      return ApiResult.success(response);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }

  Future<void> saveSearchTextToSqlite(String search) async {
    try {
      List response = await SqlHelper.readData(
          "SELECT search FROM search WHERE search = '$search'");
      if (response.isEmpty) {
        await SqlHelper.addData(data: {'search': search});
      }
    } catch (erre) {
      log(erre.toString());
    }
  }

  Future<ApiResult<List<SearchModel>>> getSearchTextFromSqlite() async {
    try {
      List<SearchModel> searchs = [];
      var response =
          await SqlHelper.readData("SELECT * FROM search ORDER BY id DESC");
      for (var item in response) {
        searchs.add(SearchModel.fromJson(item));
      }
      return ApiResult.success(searchs);
    } catch (err) {
      log(err.toString());

      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }
}
