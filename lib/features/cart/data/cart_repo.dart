import 'package:aman_store2/core/models/done_model.dart';
import 'package:aman_store2/features/cart/data/cart_serviese.dart';

import '../../../core/networking/api_error_handler.dart';
import '../../../core/networking/api_result.dart';
import 'models/cart_delivery_model.dart';
import 'models/cart_items_model/cart_item_model.dart';

class CartRepo {
  final CartServises _cartServises;
  CartRepo(this._cartServises);

  Future<ApiResult<CartItemModel>> myCart() async {
    try {
      var response = await _cartServises.myCart();
      return ApiResult.success(response);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }

  Future<ApiResult<DoneModel>> addToCart(int product) async {
    try {
      Map<String, dynamic> data={
        'product':product
      };
      var response = await _cartServises.addToCart(data);
      return ApiResult.success(response);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }

  Future<ApiResult<DoneModel>> removeToCart(int product) async {
    try {
      Map<String, dynamic> data={
        'product':product
      };
      var response = await _cartServises.removeOneFromCart(data);
      return ApiResult.success(response);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }

  Future<ApiResult<CartDeliveryModel>> cartDelivery() async {
    try {
      var response = await _cartServises.cartDelivery();
      return ApiResult.success(response);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }
  
}
