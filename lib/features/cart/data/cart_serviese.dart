import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../core/models/done_model.dart';
import '../../../core/networking/api_constanses.dart';
import 'models/add_order_done_model.dart';
import 'models/add_order_request_model.dart';
import 'models/cart_delivery_model.dart';
import 'models/cart_items_model/cart_item_model.dart';
import 'models/cheek_cart_product_model.dart';
import 'models/coupon_model.dart';
part 'cart_serviese.g.dart';

@RestApi(baseUrl: ApiConstanses.baseUrl)
abstract class CartServises
{
factory CartServises(Dio dio,{String baseUrl})= _CartServises;

// @POST(ApiConstanses.addToCart)
@GET(ApiConstanses.myCart)
Future<CartItemModel> myCart();

@POST(ApiConstanses.addOneToCart)
Future<DoneModel> addToCart(@Body() Map<String, dynamic> data);

@DELETE(ApiConstanses.deleteOneFromCart)
Future<DoneModel> removeOneFromCart(@Body() Map<String, dynamic> data);

@GET(ApiConstanses.cartDelivery)
Future<CartDeliveryModel> cartDelivery();
@GET(ApiConstanses.cheekCoupon)
Future<CouponModel> cheekCoupon(@Query('code') String code);

@POST(ApiConstanses.cheekMyWallet)
Future<DoneModel> cheekMyWallet(@Body() Map<String, dynamic> data);
@GET(ApiConstanses.cheekCartItemsQuantity)
Future<DoneModel>cheekCartItemsQuantity();
@POST(ApiConstanses.addOrder)
Future<AddOrderDoneModel> addOrder(@Body() AddOrderRequestModel addOrderRequestModel);
@GET('${ApiConstanses.cheekCartProduct}/{id}')
Future<CheekCartProductModel>cheekCartPRoduct(@Path('id') int id);
@DELETE('${ApiConstanses.deleteProductFromCart}/{id}')
Future<DoneModel> deleteCartProduct(@Path('id') int id);
@POST(ApiConstanses.editCart)
Future<DoneModel> editCart(@Body() Map<String, dynamic> data);
}