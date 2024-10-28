import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/models/done_model.dart';
import '../../../core/networking/api_constanses.dart';
import 'models/add_rating_model.dart';
import 'models/order_detils_model.dart';
import 'models/orders_model.dart';
part 'orders_serviess.g.dart';

@RestApi(baseUrl: ApiConstanses.baseUrl)
abstract class OrdersServices {
  factory OrdersServices(Dio dio, {String baseUrl}) = _OrdersServices;
  @GET(ApiConstanses.myPreviousOrders)
  Future<OrdersModel> getMyPreviousOrders();
  @GET(ApiConstanses.myCurrentOrders)
  Future<OrdersModel> getMyCurrentOrderss();

  @GET('${ApiConstanses.orderDetails}/{id}')
  Future<OrderDetilsModel> getOrderDetails(@Path('id') int id);
  @POST(ApiConstanses.addRating)
  Future<DoneModel> addRating(@Body() AddRatingModel addRatingModel);

  @GET('${ApiConstanses.order}/{id}')
  Future<dynamic>  searchOrder(@Path('id') int id);
}
