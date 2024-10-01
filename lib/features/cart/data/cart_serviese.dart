import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../core/models/done_model.dart';
import '../../../core/networking/api_constanses.dart';
import 'models/cart_delivery_model.dart';
import 'models/cart_items_model/cart_item_model.dart';
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
}