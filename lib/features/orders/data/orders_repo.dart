import 'package:aman_store2/core/models/done_model.dart';
import 'package:aman_store2/features/orders/data/models/order_detils_model.dart';

import '../../../core/networking/api_error_handler.dart';
import '../../../core/networking/api_result.dart';
import 'models/add_rating_model.dart';
import 'models/orders_model.dart';
import 'orders_serviess.dart';

class OrdersRepo {
  final OrdersServices _ordersServices;

  OrdersRepo(this._ordersServices);

  Future<ApiResult<OrdersModel>> getPreviousOrders() async {
    try {
      var response = await _ordersServices.getMyPreviousOrders();
      return ApiResult.success(response);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }

Future<ApiResult<OrdersModel>> getMyCurrentOrderss() async {
    try {
      var response = await _ordersServices.getMyCurrentOrderss();
      return ApiResult.success(response);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }

  Future<ApiResult<OrderDetilsModel>> getOrderDetils(int orderID) async {

    try {
      var response=await _ordersServices.getOrderDetails(orderID);
      return ApiResult.success(response);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
      
    }
  }
Future<ApiResult<DoneModel>> addRating(AddRatingModel addRatingModel)async
{

  try {
    var response=await _ordersServices.addRating(addRatingModel);
    return ApiResult.success(response);
  } catch (err) {
    return ApiResult.failure(ApiErrorHandler.handle(err));
    
  }
}
}
