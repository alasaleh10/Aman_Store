import 'package:aman_store2/core/models/done_model.dart';
import 'package:aman_store2/features/cart/data/cart_serviese.dart';
import 'package:aman_store2/features/cart/data/models/coupon_model.dart';

import '../../../core/networking/api_error_handler.dart';
import '../../../core/networking/api_result.dart';
import 'models/add_order_done_model.dart';
import 'models/add_order_request_model.dart';
import 'models/cart_delivery_model.dart';
import 'models/cart_items_model/cart_item_model.dart';
import 'models/cheek_cart_product_model.dart';

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
      Map<String, dynamic> data = {'product': product};
      var response = await _cartServises.addToCart(data);
      return ApiResult.success(response);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }

  Future<ApiResult<DoneModel>> removeToCart(int product) async {
    try {
      Map<String, dynamic> data = {'product': product};
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

  Future<ApiResult<CouponModel>> cheekCoupon(String code) async {
    try {
      CouponModel couponModel = await _cartServises.cheekCoupon(code);
      return ApiResult.success(couponModel);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }

  Future<ApiResult<DoneModel>> cheekMyWallet(int total) async {
    try {
      DoneModel doneModel = await _cartServises.cheekMyWallet({'total': total});
      return ApiResult.success(doneModel);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }

  Future<ApiResult<DoneModel>> cheekCartItemsQuantity() async {
    try {
      DoneModel doneModel = await _cartServises.cheekCartItemsQuantity();
      return ApiResult.success(doneModel);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }

  Future<ApiResult<AddOrderDoneModel>> addOrder(
      AddOrderRequestModel addOrderRequestModel) async {
    try {
      AddOrderDoneModel addOrderDoneModel =
          await _cartServises.addOrder(addOrderRequestModel);
      return ApiResult.success(addOrderDoneModel);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }

  Future<ApiResult<CheekCartProductModel>> cheekCartProduct(int id) async {
    try {
      CheekCartProductModel cheekCartProductModel =
          await _cartServises.cheekCartPRoduct(id);
      return ApiResult.success(cheekCartProductModel);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }

  Future<ApiResult<DoneModel>> editCart(int count, int productId) async {
    try {
      Map<String, dynamic> data = {'quantity': count, 'product': productId};
      var response = await _cartServises.editCart(data);
      return ApiResult.success(response);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }

  Future<ApiResult<DoneModel>> deleteProductFromCart(int productId) async {
    try {
      var response = await _cartServises.deleteCartProduct(productId);
      return ApiResult.success(response);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }
}
